//// SPDX-License-Identifier: GPL-2.0
///*
// * A V4L2 driver for Sony IMX708 cameras.
// * Copyright (C) 2022, Raspberry Pi Ltd
// *
// * Based on Sony imx477 camera driver
// * Copyright (C) 2020 Raspberry Pi Ltd
// */
//
//#include <asm/unaligned.h>
//#include <linux/clk.h>
//#include <linux/delay.h>
//#include <linux/gpio/consumer.h>
//#include <linux/i2c.h>
//#include <linux/module.h>
//#include <linux/pm_runtime.h>
//#include <linux/regulator/consumer.h>
//#include <media/v4l2-ctrls.h>
//#include <media/v4l2-device.h>
//#include <media/v4l2-event.h>
//#include <media/v4l2-fwnode.h>
//#include <media/v4l2-mediabus.h>
//

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>

#include "xparameters.h"
#include "xiicps.h"

#define ARRAY_SIZE(array) \
    (sizeof(array) / sizeof(*array))

#define IMX708_REG_VALUE_08BIT		1
#define IMX708_REG_VALUE_16BIT		2

/* Chip ID */
#define IMX708_REG_CHIP_ID		0x0016
#define IMX708_CHIP_ID			0x0708

#define IMX708_REG_MODE_SELECT		0x0100
#define IMX708_MODE_STANDBY		0x00
#define IMX708_MODE_STREAMING		0x01

#define IMX708_REG_ORIENTATION		0x101

#define IMX708_INCLK_FREQ		24000000

/* Default initial pixel rate, will get updated for each mode. */
#define IMX708_INITIAL_PIXEL_RATE	590000000

/* V_TIMING internal */
#define IMX708_REG_FRAME_LENGTH		0x0340
#define IMX708_FRAME_LENGTH_MAX		0xffff

/* Long exposure multiplier */
#define IMX708_LONG_EXP_SHIFT_MAX	7
#define IMX708_LONG_EXP_SHIFT_REG	0x3100

/* Exposure control */
#define IMX708_REG_EXPOSURE		0x0202
#define IMX708_EXPOSURE_OFFSET		48
#define IMX708_EXPOSURE_DEFAULT		0x640
#define IMX708_EXPOSURE_STEP		1
#define IMX708_EXPOSURE_MIN		1
#define IMX708_EXPOSURE_MAX		(IMX708_FRAME_LENGTH_MAX - \
					 IMX708_EXPOSURE_OFFSET)

/* Analog gain control */
#define IMX708_REG_ANALOG_GAIN		0x0204
#define IMX708_ANA_GAIN_MIN		112
#define IMX708_ANA_GAIN_MAX		960
#define IMX708_ANA_GAIN_STEP		1
#define IMX708_ANA_GAIN_DEFAULT	   IMX708_ANA_GAIN_MIN

/* Digital gain control */
#define IMX708_REG_DIGITAL_GAIN		0x020e
#define IMX708_DGTL_GAIN_MIN		0x0100
#define IMX708_DGTL_GAIN_MAX		0xffff
#define IMX708_DGTL_GAIN_DEFAULT	0x0100
#define IMX708_DGTL_GAIN_STEP		1

/* Colour balance controls */
#define IMX708_REG_COLOUR_BALANCE_RED   0x0b90
#define IMX708_REG_COLOUR_BALANCE_BLUE	0x0b92
#define IMX708_COLOUR_BALANCE_MIN	0x01
#define IMX708_COLOUR_BALANCE_MAX	0xffff
#define IMX708_COLOUR_BALANCE_STEP	0x01
#define IMX708_COLOUR_BALANCE_DEFAULT	0x100

/* Test Pattern Control */
#define IMX708_REG_TEST_PATTERN		0x0600
#define IMX708_TEST_PATTERN_DISABLE	0
#define IMX708_TEST_PATTERN_SOLID_COLOR	1
#define IMX708_TEST_PATTERN_COLOR_BARS	2
#define IMX708_TEST_PATTERN_GREY_COLOR	3
#define IMX708_TEST_PATTERN_PN9		4

/* Test pattern colour components */
#define IMX708_REG_TEST_PATTERN_R	0x0602
#define IMX708_REG_TEST_PATTERN_GR	0x0604
#define IMX708_REG_TEST_PATTERN_B	0x0606
#define IMX708_REG_TEST_PATTERN_GB	0x0608
#define IMX708_TEST_PATTERN_COLOUR_MIN	0
#define IMX708_TEST_PATTERN_COLOUR_MAX	0x0fff
#define IMX708_TEST_PATTERN_COLOUR_STEP	1

#define IMX708_REG_BASE_SPC_GAINS_L	0x7b10
#define IMX708_REG_BASE_SPC_GAINS_R	0x7c00

/* HDR exposure ratio (long:med == med:short) */
#define IMX708_HDR_EXPOSURE_RATIO       4
#define IMX708_REG_MID_EXPOSURE	0x3116
#define IMX708_REG_SHT_EXPOSURE	0x0224
#define IMX708_REG_MID_ANALOG_GAIN	0x3118
#define IMX708_REG_SHT_ANALOG_GAIN	0x0216

/*
 * Metadata buffer holds a variety of data, all sent with the same VC/DT (0x12).
 * It comprises two scanlines (of up to 5760 bytes each, for 4608 pixels)
 * of embedded data, one line of PDAF data, and two lines of AE-HIST data
 * (AE histograms are valid for HDR mode and empty in non-HDR modes).
 */
#define IMX708_EMBEDDED_LINE_WIDTH (5 * 5760)
#define IMX708_NUM_EMBEDDED_LINES 1

enum pad_types {
	IMAGE_PAD,
	METADATA_PAD,
	NUM_PADS
};

/* IMX708 native and active pixel array size. */
#define IMX708_NATIVE_WIDTH		4640U
#define IMX708_NATIVE_HEIGHT		2658U
#define IMX708_PIXEL_ARRAY_LEFT		16U
#define IMX708_PIXEL_ARRAY_TOP		24U
#define IMX708_PIXEL_ARRAY_WIDTH	4608U
#define IMX708_PIXEL_ARRAY_HEIGHT	2592U

static struct imx708 *imx708;

struct imx708_reg {
	uint16_t address;
	uint8_t val;
};

struct imx708_reg_list {
	unsigned int num_of_regs;
	const struct imx708_reg *regs;
};

struct v4l2_rect {
	int width;
	int length;
	int left;
	int right;
	int height;
	int top;
};
//
/* Mode : resolution and related config&values */
struct imx708_mode {
	/* Frame width */
	unsigned int width;

	/* Frame height */
	unsigned int height;

	/* H-timing in pixels */
	unsigned int line_length_pix;

	/* Analog crop rectangle. */
	struct v4l2_rect crop;

	/* Highest possible framerate. */
	unsigned int vblank_min;

	/* Default framerate. */
	unsigned int vblank_default;

	/* Default register values */
	struct imx708_reg_list reg_list;

	/* Not all modes have the same pixel rate. */
	uint64_t pixel_rate;

	/* Not all modes have the same minimum exposure. */
	uint32_t exposure_lines_min;

	/* Not all modes have the same exposure lines step. */
	uint32_t exposure_lines_step;

	/* HDR flag, used for checking if the current mode is HDR */
	bool hdr;
};

/* Default PDAF pixel correction gains */
static const uint8_t pdaf_gains[2][9] = {
	{ 0x4c, 0x4c, 0x4c, 0x46, 0x3e, 0x38, 0x35, 0x35, 0x35 },
	{ 0x35, 0x35, 0x35, 0x38, 0x3e, 0x46, 0x4c, 0x4c, 0x4c }
};

/* Link frequency setup */
enum {
	IMX708_LINK_FREQ_450MHZ,
	IMX708_LINK_FREQ_447MHZ,
	IMX708_LINK_FREQ_453MHZ,
};

static const int64_t link_freqs[] = {
	[IMX708_LINK_FREQ_450MHZ] = 450000000,
	[IMX708_LINK_FREQ_447MHZ] = 447000000,
	[IMX708_LINK_FREQ_453MHZ] = 453000000,
};

/* 450MHz is the nominal "default" link frequency */
static const struct imx708_reg link_450Mhz_regs[] = {
	{0x030E, 0x01},
	{0x030F, 0x2c},
};

static const struct imx708_reg link_447Mhz_regs[] = {
	{0x030E, 0x01},
	{0x030F, 0x2a},
};

static const struct imx708_reg link_453Mhz_regs[] = {
	{0x030E, 0x01},
	{0x030F, 0x2e},
};

static const struct imx708_reg_list link_freq_regs[] = {
	[IMX708_LINK_FREQ_450MHZ] = {
		.regs = link_450Mhz_regs,
		.num_of_regs = ARRAY_SIZE(link_450Mhz_regs)
	},
	[IMX708_LINK_FREQ_447MHZ] = {
		.regs = link_447Mhz_regs,
		.num_of_regs = ARRAY_SIZE(link_447Mhz_regs)
	},
	[IMX708_LINK_FREQ_453MHZ] = {
		.regs = link_453Mhz_regs,
		.num_of_regs = ARRAY_SIZE(link_453Mhz_regs)
	},
};

static const struct imx708_reg mode_common_regs[] = {
	{0x0100, 0x00},
	{0x0136, 0x18},
	{0x0137, 0x00},
	{0x33F0, 0x02},
	{0x33F1, 0x05},
	{0x3062, 0x00},
	{0x3063, 0x12},
	{0x3068, 0x00},
	{0x3069, 0x12},
	{0x306A, 0x00},
	{0x306B, 0x30},
	{0x3076, 0x00},
	{0x3077, 0x30},
	{0x3078, 0x00},
	{0x3079, 0x30},
	{0x5E54, 0x0C},
	{0x6E44, 0x00},
	{0xB0B6, 0x01},
	{0xE829, 0x00},
	{0xF001, 0x08},
	{0xF003, 0x08},
	{0xF00D, 0x10},
	{0xF00F, 0x10},
	{0xF031, 0x08},
	{0xF033, 0x08},
	{0xF03D, 0x10},
	{0xF03F, 0x10},
	{0x0112, 0x0A},
	{0x0113, 0x0A},
	{0x0114, 0x01},
	{0x0B8E, 0x01},
	{0x0B8F, 0x00},
	{0x0B94, 0x01},
	{0x0B95, 0x00},
	{0x3400, 0x01},
	{0x3478, 0x01},
	{0x3479, 0x1c},
	{0x3091, 0x01},
	{0x3092, 0x00},
	{0x3419, 0x00},
	{0xBCF1, 0x02},
	{0x3094, 0x01},
	{0x3095, 0x01},
	{0x3362, 0x00},
	{0x3363, 0x00},
	{0x3364, 0x00},
	{0x3365, 0x00},
	{0x0138, 0x01},
};

/* 10-bit. */
static const struct imx708_reg mode_4608x2592_regs[] = {
	{0x0342, 0x3D},
	{0x0343, 0x20},
	{0x0340, 0x0A},
	{0x0341, 0x59},
	{0x0344, 0x00},
	{0x0345, 0x00},
	{0x0346, 0x00},
	{0x0347, 0x00},
	{0x0348, 0x11},
	{0x0349, 0xFF},
	{0x034A, 0X0A},
	{0x034B, 0x1F},
	{0x0220, 0x62},
	{0x0222, 0x01},
	{0x0900, 0x00},
	{0x0901, 0x11},
	{0x0902, 0x0A},
	{0x3200, 0x01},
	{0x3201, 0x01},
	{0x32D5, 0x01},
	{0x32D6, 0x00},
	{0x32DB, 0x01},
	{0x32DF, 0x00},
	{0x350C, 0x00},
	{0x350D, 0x00},
	{0x0408, 0x00},
	{0x0409, 0x00},
	{0x040A, 0x00},
	{0x040B, 0x00},
	{0x040C, 0x12},
	{0x040D, 0x00},
	{0x040E, 0x0A},
	{0x040F, 0x20},
	{0x034C, 0x12},
	{0x034D, 0x00},
	{0x034E, 0x0A},
	{0x034F, 0x20},
	{0x0301, 0x05},
	{0x0303, 0x02},
	{0x0305, 0x02},
	{0x0306, 0x00},
	{0x0307, 0x7C},
	{0x030B, 0x02},
	{0x030D, 0x04},
	{0x0310, 0x01},
	{0x3CA0, 0x00},
	{0x3CA1, 0x64},
	{0x3CA4, 0x00},
	{0x3CA5, 0x00},
	{0x3CA6, 0x00},
	{0x3CA7, 0x00},
	{0x3CAA, 0x00},
	{0x3CAB, 0x00},
	{0x3CB8, 0x00},
	{0x3CB9, 0x08},
	{0x3CBA, 0x00},
	{0x3CBB, 0x00},
	{0x3CBC, 0x00},
	{0x3CBD, 0x3C},
	{0x3CBE, 0x00},
	{0x3CBF, 0x00},
	{0x0202, 0x0A},
	{0x0203, 0x29},
	{0x0224, 0x01},
	{0x0225, 0xF4},
	{0x3116, 0x01},
	{0x3117, 0xF4},
	{0x0204, 0x00},
	{0x0205, 0x00},
	{0x0216, 0x00},
	{0x0217, 0x00},
	{0x0218, 0x01},
	{0x0219, 0x00},
	{0x020E, 0x01},
	{0x020F, 0x00},
	{0x3118, 0x00},
	{0x3119, 0x00},
	{0x311A, 0x01},
	{0x311B, 0x00},
	{0x341a, 0x00},
	{0x341b, 0x00},
	{0x341c, 0x00},
	{0x341d, 0x00},
	{0x341e, 0x01},
	{0x341f, 0x20},
	{0x3420, 0x00},
	{0x3421, 0xd8},
	{0xC428, 0x00},
	{0xC429, 0x04},
	{0x3366, 0x00},
	{0x3367, 0x00},
	{0x3368, 0x00},
	{0x3369, 0x00},
};

static const struct imx708_reg mode_2x2binned_regs[] = {
	{0x0342, 0x1E},
	{0x0343, 0x90},
	{0x0340, 0x05},
	{0x0341, 0x38},
	{0x0344, 0x00},
	{0x0345, 0x00},
	{0x0346, 0x00},
	{0x0347, 0x00},
	{0x0348, 0x11},
	{0x0349, 0xFF},
	{0x034A, 0X0A},
	{0x034B, 0x1F},
	{0x0220, 0x62},
	{0x0222, 0x01},
	{0x0900, 0x01},
	{0x0901, 0x22},
	{0x0902, 0x08},
	{0x3200, 0x41},
	{0x3201, 0x41},
	{0x32D5, 0x00},
	{0x32D6, 0x00},
	{0x32DB, 0x01},
	{0x32DF, 0x00},
	{0x350C, 0x00},
	{0x350D, 0x00},
	{0x0408, 0x00},
	{0x0409, 0x00},
	{0x040A, 0x00},
	{0x040B, 0x00},
	{0x040C, 0x09},
	{0x040D, 0x00},
	{0x040E, 0x05},
	{0x040F, 0x10},
	{0x034C, 0x09},
	{0x034D, 0x00},
	{0x034E, 0x05},
	{0x034F, 0x10},
	{0x0301, 0x05},
	{0x0303, 0x02},
	{0x0305, 0x02},
	{0x0306, 0x00},
	{0x0307, 0x7A},
	{0x030B, 0x02},
	{0x030D, 0x04},
	{0x0310, 0x01},
	{0x3CA0, 0x00},
	{0x3CA1, 0x3C},
	{0x3CA4, 0x00},
	{0x3CA5, 0x3C},
	{0x3CA6, 0x00},
	{0x3CA7, 0x00},
	{0x3CAA, 0x00},
	{0x3CAB, 0x00},
	{0x3CB8, 0x00},
	{0x3CB9, 0x1C},
	{0x3CBA, 0x00},
	{0x3CBB, 0x08},
	{0x3CBC, 0x00},
	{0x3CBD, 0x1E},
	{0x3CBE, 0x00},
	{0x3CBF, 0x0A},
	{0x0202, 0x05},
	{0x0203, 0x08},
	{0x0224, 0x01},
	{0x0225, 0xF4},
	{0x3116, 0x01},
	{0x3117, 0xF4},
	{0x0204, 0x00},
	{0x0205, 0x70},
	{0x0216, 0x00},
	{0x0217, 0x70},
	{0x0218, 0x01},
	{0x0219, 0x00},
	{0x020E, 0x01},
	{0x020F, 0x00},
	{0x3118, 0x00},
	{0x3119, 0x70},
	{0x311A, 0x01},
	{0x311B, 0x00},
	{0x341a, 0x00},
	{0x341b, 0x00},
	{0x341c, 0x00},
	{0x341d, 0x00},
	{0x341e, 0x00},
	{0x341f, 0x90},
	{0x3420, 0x00},
	{0x3421, 0x6c},
	{0x3366, 0x00},
	{0x3367, 0x00},
	{0x3368, 0x00},
	{0x3369, 0x00},
};

static const struct imx708_reg mode_2x2binned_720p_regs[] = {
	{0x0342, 0x14},
	{0x0343, 0x60},
	{0x0340, 0x04},
	{0x0341, 0xB6},
	{0x0344, 0x03},
	{0x0345, 0x00},
	{0x0346, 0x01},
	{0x0347, 0xB0},
	{0x0348, 0x0E},
	{0x0349, 0xFF},
	{0x034A, 0x08},
	{0x034B, 0x6F},
	{0x0220, 0x62},
	{0x0222, 0x01},
	{0x0900, 0x01},
	{0x0901, 0x22},
	{0x0902, 0x08},
	{0x3200, 0x41},
	{0x3201, 0x41},
	{0x32D5, 0x00},
	{0x32D6, 0x00},
	{0x32DB, 0x01},
	{0x32DF, 0x01},
	{0x350C, 0x00},
	{0x350D, 0x00},
	{0x0408, 0x00},
	{0x0409, 0x00},
	{0x040A, 0x00},
	{0x040B, 0x00},
	{0x040C, 0x06},
	{0x040D, 0x00},
	{0x040E, 0x03},
	{0x040F, 0x60},
	{0x034C, 0x06},
	{0x034D, 0x00},
	{0x034E, 0x03},
	{0x034F, 0x60},
	{0x0301, 0x05},
	{0x0303, 0x02},
	{0x0305, 0x02},
	{0x0306, 0x00},
	{0x0307, 0x76},
	{0x030B, 0x02},
	{0x030D, 0x04},
	{0x0310, 0x01},
	{0x3CA0, 0x00},
	{0x3CA1, 0x3C},
	{0x3CA4, 0x01},
	{0x3CA5, 0x5E},
	{0x3CA6, 0x00},
	{0x3CA7, 0x00},
	{0x3CAA, 0x00},
	{0x3CAB, 0x00},
	{0x3CB8, 0x00},
	{0x3CB9, 0x0C},
	{0x3CBA, 0x00},
	{0x3CBB, 0x04},
	{0x3CBC, 0x00},
	{0x3CBD, 0x1E},
	{0x3CBE, 0x00},
	{0x3CBF, 0x05},
	{0x0202, 0x04},
	{0x0203, 0x86},
	{0x0224, 0x01},
	{0x0225, 0xF4},
	{0x3116, 0x01},
	{0x3117, 0xF4},
	{0x0204, 0x00},
	{0x0205, 0x70},
	{0x0216, 0x00},
	{0x0217, 0x70},
	{0x0218, 0x01},
	{0x0219, 0x00},
	{0x020E, 0x01},
	{0x020F, 0x00},
	{0x3118, 0x00},
	{0x3119, 0x70},
	{0x311A, 0x01},
	{0x311B, 0x00},
	{0x341a, 0x00},
	{0x341b, 0x00},
	{0x341c, 0x00},
	{0x341d, 0x00},
	{0x341e, 0x00},
	{0x341f, 0x60},
	{0x3420, 0x00},
	{0x3421, 0x48},
	{0x3366, 0x00},
	{0x3367, 0x00},
	{0x3368, 0x00},
	{0x3369, 0x00},
};

static const struct imx708_reg mode_hdr_regs[] = {
	{0x0342, 0x14},
	{0x0343, 0x60},
	{0x0340, 0x0A},
	{0x0341, 0x5B},
	{0x0344, 0x00},
	{0x0345, 0x00},
	{0x0346, 0x00},
	{0x0347, 0x00},
	{0x0348, 0x11},
	{0x0349, 0xFF},
	{0x034A, 0X0A},
	{0x034B, 0x1F},
	{0x0220, 0x01},
	{0x0222, IMX708_HDR_EXPOSURE_RATIO},
	{0x0900, 0x00},
	{0x0901, 0x11},
	{0x0902, 0x0A},
	{0x3200, 0x01},
	{0x3201, 0x01},
	{0x32D5, 0x00},
	{0x32D6, 0x00},
	{0x32DB, 0x01},
	{0x32DF, 0x00},
	{0x350C, 0x00},
	{0x350D, 0x00},
	{0x0408, 0x00},
	{0x0409, 0x00},
	{0x040A, 0x00},
	{0x040B, 0x00},
	{0x040C, 0x09},
	{0x040D, 0x00},
	{0x040E, 0x05},
	{0x040F, 0x10},
	{0x034C, 0x09},
	{0x034D, 0x00},
	{0x034E, 0x05},
	{0x034F, 0x10},
	{0x0301, 0x05},
	{0x0303, 0x02},
	{0x0305, 0x02},
	{0x0306, 0x00},
	{0x0307, 0xA2},
	{0x030B, 0x02},
	{0x030D, 0x04},
	{0x0310, 0x01},
	{0x3CA0, 0x00},
	{0x3CA1, 0x00},
	{0x3CA4, 0x00},
	{0x3CA5, 0x00},
	{0x3CA6, 0x00},
	{0x3CA7, 0x28},
	{0x3CAA, 0x00},
	{0x3CAB, 0x00},
	{0x3CB8, 0x00},
	{0x3CB9, 0x30},
	{0x3CBA, 0x00},
	{0x3CBB, 0x00},
	{0x3CBC, 0x00},
	{0x3CBD, 0x32},
	{0x3CBE, 0x00},
	{0x3CBF, 0x00},
	{0x0202, 0x0A},
	{0x0203, 0x2B},
	{0x0224, 0x0A},
	{0x0225, 0x2B},
	{0x3116, 0x0A},
	{0x3117, 0x2B},
	{0x0204, 0x00},
	{0x0205, 0x00},
	{0x0216, 0x00},
	{0x0217, 0x00},
	{0x0218, 0x01},
	{0x0219, 0x00},
	{0x020E, 0x01},
	{0x020F, 0x00},
	{0x3118, 0x00},
	{0x3119, 0x00},
	{0x311A, 0x01},
	{0x311B, 0x00},
	{0x341a, 0x00},
	{0x341b, 0x00},
	{0x341c, 0x00},
	{0x341d, 0x00},
	{0x341e, 0x00},
	{0x341f, 0x90},
	{0x3420, 0x00},
	{0x3421, 0x6c},
	{0x3360, 0x01},
	{0x3361, 0x01},
	{0x3366, 0x09},
	{0x3367, 0x00},
	{0x3368, 0x05},
	{0x3369, 0x10},
};

/* Mode configs. Keep separate lists for when HDR is enabled or not. */
static const struct imx708_mode supported_modes_10bit_no_hdr[] = {
	{
		/* Full resolution. */
		.width = 4608,
		.height = 2592,
		.line_length_pix = 0x3d20,
		.crop = {
			.left = IMX708_PIXEL_ARRAY_LEFT,
			.top = IMX708_PIXEL_ARRAY_TOP,
			.width = 4608,
			.height = 2592,
		},
		.vblank_min = 58,
		.vblank_default = 58,
		.reg_list = {
			.num_of_regs = ARRAY_SIZE(mode_4608x2592_regs),
			.regs = mode_4608x2592_regs,
		},
		.pixel_rate = 595200000,
		.exposure_lines_min = 8,
		.exposure_lines_step = 1,
		.hdr = false
	},
	{
		/* regular 2x2 binned. */
		.width = 2304,
		.height = 1296,
		.line_length_pix = 0x1e90,
		.crop = {
			.left = IMX708_PIXEL_ARRAY_LEFT,
			.top = IMX708_PIXEL_ARRAY_TOP,
			.width = 4608,
			.height = 2592,
		},
		.vblank_min = 40,
		.vblank_default = 1198,
		.reg_list = {
			.num_of_regs = ARRAY_SIZE(mode_2x2binned_regs),
			.regs = mode_2x2binned_regs,
		},
		.pixel_rate = 585600000,
		.exposure_lines_min = 4,
		.exposure_lines_step = 2,
		.hdr = false
	},
	{
		/* 2x2 binned and cropped for 720p. */
		.width = 1536,
		.height = 864,
		.line_length_pix = 0x1460,
		.crop = {
			.left = IMX708_PIXEL_ARRAY_LEFT + 768,
			.top = IMX708_PIXEL_ARRAY_TOP + 432,
			.width = 3072,
			.height = 1728,
		},
		.vblank_min = 40,
		.vblank_default = 2755,
		.reg_list = {
			.num_of_regs = ARRAY_SIZE(mode_2x2binned_720p_regs),
			.regs = mode_2x2binned_720p_regs,
		},
		.pixel_rate = 566400000,
		.exposure_lines_min = 4,
		.exposure_lines_step = 2,
		.hdr = false
	},
};

static const struct imx708_mode supported_modes_10bit_hdr[] = {
	{
		/* There's only one HDR mode, which is 2x2 downscaled */
		.width = 2304,
		.height = 1296,
		.line_length_pix = 0x1460,
		.crop = {
			.left = IMX708_PIXEL_ARRAY_LEFT,
			.top = IMX708_PIXEL_ARRAY_TOP,
			.width = 4608,
			.height = 2592,
		},
		.vblank_min = 3673,
		.vblank_default = 3673,
		.reg_list = {
			.num_of_regs = ARRAY_SIZE(mode_hdr_regs),
			.regs = mode_hdr_regs,
		},
		.pixel_rate = 777600000,
		.exposure_lines_min = 8 * IMX708_HDR_EXPOSURE_RATIO * IMX708_HDR_EXPOSURE_RATIO,
		.exposure_lines_step = 2 * IMX708_HDR_EXPOSURE_RATIO * IMX708_HDR_EXPOSURE_RATIO,
		.hdr = true
	}
};

/*
 * The supported formats.
 * This table MUST contain 4 entries per format, to cover the various flip
 * combinations in the order
 * - no flip
 * - h flip
 * - v flip
 * - h&v flips
 */
//static const uint32_t codes[] = {
//	/* 10-bit modes. */
//	MEDIA_BUS_FMT_SRGGB10_1X10,
//	MEDIA_BUS_FMT_SGRBG10_1X10,
//	MEDIA_BUS_FMT_SGBRG10_1X10,
//	MEDIA_BUS_FMT_SBGGR10_1X10,
//};

static const char * const imx708_test_pattern_menu[] = {
	"Disabled",
	"Color Bars",
	"Solid Color",
	"Grey Color Bars",
	"PN9"
};

static const int imx708_test_pattern_val[] = {
	IMX708_TEST_PATTERN_DISABLE,
	IMX708_TEST_PATTERN_COLOR_BARS,
	IMX708_TEST_PATTERN_SOLID_COLOR,
	IMX708_TEST_PATTERN_GREY_COLOR,
	IMX708_TEST_PATTERN_PN9,
};

/* regulator supplies */
static const char * const imx708_supply_name[] = {
	/* Supplies can be enabled in any order */
	"vana1",  /* Analog1 (2.8V) supply */
	"vana2",  /* Analog2 (1.8V) supply */
	"vdig",  /* Digital Core (1.1V) supply */
	"vddl",  /* IF (1.8V) supply */
};

/*
 * Initialisation delay between XCLR low->high and the moment when the sensor
 * can start capture (i.e. can leave software standby), given by T7 in the
 * datasheet is 8ms.  This does include I2C setup time as well.
 *
 * Note, that delay between XCLR low->high and reading the CCI ID register (T6
 * in the datasheet) is much smaller - 600us.
 */
#define IMX708_XCLR_MIN_DELAY_US	8000
#define IMX708_XCLR_DELAY_RANGE_US	1000

struct imx708 {
	XIicPs iic_imx708;

	//struct media_pad pad[NUM_PADS];

	//struct v4l2_mbus_framefmt fmt;

	//struct clk *inclk;
	uint32_t inclk_freq;

	//struct regulator_bulk_data supplies[ARRAY_SIZE(imx708_supply_name)];

	//struct v4l2_ctrl_handler ctrl_handler;
	/* V4L2 Controls */
	struct v4l2_ctrl *pixel_rate;
	struct v4l2_ctrl *exposure;
	struct v4l2_ctrl *vblank;
	struct v4l2_ctrl *hblank;
	struct v4l2_ctrl *hdr_mode;
	struct v4l2_ctrl *link_freq;
	struct {
		struct v4l2_ctrl *hflip;
		struct v4l2_ctrl *vflip;
	};

	/* Current mode */
	const struct imx708_mode *mode;

	/*
	 * Mutex for serialized access:
	 * Protect sensor module set pad format and start/stop streaming safely.
	 */
//	struct mutex mutex;

	/* Streaming on/off */
	bool streaming;

	/* Rewrite common registers on stream on? */
	bool common_regs_written;

	/* Current long exposure factor in use. Set through V4L2_CID_VBLANK */
	unsigned int long_exp_shift;

	unsigned int link_freq_idx;
};
//
//static inline struct imx708 *to_imx708(struct v4l2_subdev *_sd)
//{
//	return container_of(_sd, struct imx708, sd);
//}
//
//static inline void get_mode_table(unsigned int code,
//				  const struct imx708_mode **mode_list,
//				  unsigned int *num_modes,
//				  bool hdr_enable)
//{
//	switch (code) {
//	/* 10-bit */
//	case MEDIA_BUS_FMT_SRGGB10_1X10:
//	case MEDIA_BUS_FMT_SGRBG10_1X10:
//	case MEDIA_BUS_FMT_SGBRG10_1X10:
//	case MEDIA_BUS_FMT_SBGGR10_1X10:
//		if (hdr_enable) {
//			*mode_list = supported_modes_10bit_hdr;
//			*num_modes = ARRAY_SIZE(supported_modes_10bit_hdr);
//		} else {
//			*mode_list = supported_modes_10bit_no_hdr;
//			*num_modes = ARRAY_SIZE(supported_modes_10bit_no_hdr);
//		}
//		break;
//	default:
//		*mode_list = NULL;
//		*num_modes = 0;
//	}
//}

struct __una_u32 { u32 x; } __packed;

static inline u32 __get_unaligned_cpu32(const void *p)
{
	const struct __una_u32 *ptr = (const struct __una_u32 *)p;
	return ptr->x;
}

static inline u32 get_unaligned_be32(const void *p)
{
   return __get_unaligned_cpu32((const u8 *)p);
}

///* Read registers up to 2 at a time */
static int imx708_read_reg( uint16_t reg, uint32_t len, uint32_t *val)
{
	XIicPs* iic_client = &(imx708->iic_imx708);

	uint8_t addr_buf[2] = { reg >> 8, reg & 0xff };
	uint8_t data_buf[4] = { 0,0,0,0 };
	int ret;

	if (len > 4)
		return -1;

	while (XIicPs_BusIsBusy(iic_client)) {
				/* NOP */
	}
	usleep(50);

	/* Write register address */
	XIicPs_MasterSendPolled(iic_client, addr_buf,
				 2, 0x1A);
	while (XIicPs_BusIsBusy(iic_client)) {
			/* NOP */
	}
	usleep(50);
	/* Read data from register */
	XIicPs_MasterRecvPolled(iic_client, &data_buf[4 - len],
			len, 0x1A);

	*val = ((uint32_t)data_buf[0]<<24) |
		((uint32_t)data_buf[1]<<16) |
		((uint32_t)data_buf[2]<<8) |
		((uint32_t)data_buf[3]);

	return 0;
}

/* Write registers up to 2 at a time */
static int imx708_write_reg(  uint16_t reg, uint32_t len, uint32_t val)
{
	XIicPs* iic_client = &(imx708->iic_imx708);
	uint8_t buf[6]={0};

	if (len > 4)
		return -1;

	//put_unaligned_be16(reg, buf);
	buf[0] = reg >>8 ;
	buf[1] = reg & 0xff;

	//put_unaligned_be32(val << (8 * (4 - len)), buf + 2);
	if(len == 1){
		buf[2] =  val & 0xff;
	}else if(len==2){
		buf[2] = (val & 0xff00)>>8;
		buf[3] =  val & 0xff;
	}else{
		buf[2] = (val & 0xff000000)>>24;
		buf[3] = (val & 0xff0000) >>16;
		buf[4] = (val & 0xff00)>>8;
		buf[5] =  val & 0xff;
	}

	while (XIicPs_BusIsBusy(iic_client)) {
			/* NOP */
	}
	usleep(50);

	XIicPs_MasterSendPolled(iic_client, buf,
					 len + 2 , 0x1A);
	while (XIicPs_BusIsBusy(iic_client)) {
			/* NOP */
	}
	usleep(50);
//	if (i2c_master_send(client, buf, len + 2) != len + 2)
//		return -EIO;

	return 0;
}

/* Write a list of registers */
static int imx708_write_regs( const struct imx708_reg *regs, uint32_t len)
{
	//struct i2c_client *client = v4l2_get_subdevdata(&imx708->sd);
	unsigned int i;

	for (i = 0; i < len; i++) {
		int ret;

		ret = imx708_write_reg( regs[i].address, 1, regs[i].val);
		if (ret) {
			printf("Failed to write reg 0x%4.4x. error = %d\n",
					    regs[i].address, ret);

			return ret;
		}
	}

	return 0;
}
//
///* Get bayer order based on flip setting. */
//static uint32_t imx708_get_format_code(struct imx708 *imx708)
//{
//	unsigned int i;
//
//	lockdep_assert_held(&imx708->mutex);
//
//	i = (imx708->vflip->val ? 2 : 0) |
//	    (imx708->hflip->val ? 1 : 0);
//
//	return codes[i];
//}
//
static void imx708_set_default_format()
{
	//struct v4l2_mbus_framefmt *fmt = &imx708->fmt;

	/* Set default mode to max resolution */
	imx708->mode = &supported_modes_10bit_no_hdr[2];

	/* fmt->code not set as it will always be computed based on flips */
//	fmt->colorspace = V4L2_COLORSPACE_RAW;
//	fmt->ycbcr_enc = V4L2_MAP_YCBCR_ENC_DEFAULT(fmt->colorspace);
//	fmt->quantization = V4L2_MAP_QUANTIZATION_DEFAULT(true,
//							  fmt->colorspace,
//							  fmt->ycbcr_enc);
//	fmt->xfer_func = V4L2_MAP_XFER_FUNC_DEFAULT(fmt->colorspace);
//	fmt->width = imx708->mode->width;
//	fmt->height = imx708->mode->height;
//	fmt->field = V4L2_FIELD_NONE;
}
//
//static int imx708_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
//{
//	struct imx708 *imx708 = to_imx708(sd);
//	struct v4l2_mbus_framefmt *try_fmt_img =
//		v4l2_subdev_get_try_format(sd, fh->state, IMAGE_PAD);
//	struct v4l2_mbus_framefmt *try_fmt_meta =
//		v4l2_subdev_get_try_format(sd, fh->state, METADATA_PAD);
//	struct v4l2_rect *try_crop;
//
//	mutex_lock(&imx708->mutex);
//
//	/* Initialize try_fmt for the image pad */
//	if (imx708->hdr_mode->val) {
//		try_fmt_img->width = supported_modes_10bit_hdr[0].width;
//		try_fmt_img->height = supported_modes_10bit_hdr[0].height;
//	} else {
//		try_fmt_img->width = supported_modes_10bit_no_hdr[0].width;
//		try_fmt_img->height = supported_modes_10bit_no_hdr[0].height;
//	}
//	try_fmt_img->code = imx708_get_format_code(imx708);
//	try_fmt_img->field = V4L2_FIELD_NONE;
//
//	/* Initialize try_fmt for the embedded metadata pad */
//	try_fmt_meta->width = IMX708_EMBEDDED_LINE_WIDTH;
//	try_fmt_meta->height = IMX708_NUM_EMBEDDED_LINES;
//	try_fmt_meta->code = MEDIA_BUS_FMT_SENSOR_DATA;
//	try_fmt_meta->field = V4L2_FIELD_NONE;
//
//	/* Initialize try_crop */
//	try_crop = v4l2_subdev_get_try_crop(sd, fh->state, IMAGE_PAD);
//	try_crop->left = IMX708_PIXEL_ARRAY_LEFT;
//	try_crop->top = IMX708_PIXEL_ARRAY_TOP;
//	try_crop->width = IMX708_PIXEL_ARRAY_WIDTH;
//	try_crop->height = IMX708_PIXEL_ARRAY_HEIGHT;
//
//	mutex_unlock(&imx708->mutex);
//
//	return 0;
//}
//

//inline unsigned int max ( unsigned int a, unsigned int b ) { return a > b ? a : b; }

static int imx708_set_exposure(unsigned int val)
{
	val = val > imx708->mode->exposure_lines_min ? val : imx708->mode->exposure_lines_min ;
			//max(val, imx708->mode->exposure_lines_min);

	val -= val % imx708->mode->exposure_lines_step;

	/*
	 * In HDR mode this will set the longest exposure. The sensor
	 * will automatically divide the medium and short ones by 4,16.
	 */
	return imx708_write_reg( IMX708_REG_EXPOSURE,
				IMX708_REG_VALUE_16BIT,
				val >> imx708->long_exp_shift);
}
//
//static void imx708_adjust_exposure_range(struct imx708 *imx708,
//					 struct v4l2_ctrl *ctrl)
//{
//	int exposure_max, exposure_def;
//
//	/* Honour the VBLANK limits when setting exposure. */
//	exposure_max = imx708->mode->height + imx708->vblank->val -
//		IMX708_EXPOSURE_OFFSET;
//	exposure_def = min(exposure_max, imx708->exposure->val);
//	__v4l2_ctrl_modify_range(imx708->exposure, imx708->exposure->minimum,
//				 exposure_max, imx708->exposure->step,
//				 exposure_def);
//}
//
static int imx708_set_analogue_gain(struct imx708 *imx708, unsigned int val)
{
	int ret;

	/*
	 * In HDR mode this will set the gain for the longest exposure,
	 * and by default the sensor uses the same gain for all of them.
	 */
	ret = imx708_write_reg( IMX708_REG_ANALOG_GAIN,
			       IMX708_REG_VALUE_16BIT, val);

	return ret;
}

static int imx708_set_frame_length(struct imx708 *imx708, unsigned int val)
{
	int ret;

	imx708->long_exp_shift = 0;

	while (val > IMX708_FRAME_LENGTH_MAX) {
		imx708->long_exp_shift++;
		val >>= 1;
	}

	ret = imx708_write_reg( IMX708_REG_FRAME_LENGTH,
			       IMX708_REG_VALUE_16BIT, val);
	if (ret)
		return ret;

	return imx708_write_reg( IMX708_LONG_EXP_SHIFT_REG,
				IMX708_REG_VALUE_08BIT, imx708->long_exp_shift);
}
//
//static void imx708_set_framing_limits(struct imx708 *imx708)
//{
//	const struct imx708_mode *mode = imx708->mode;
//	unsigned int hblank;
//
//	__v4l2_ctrl_modify_range(imx708->pixel_rate,
//				 mode->pixel_rate, mode->pixel_rate,
//				 1, mode->pixel_rate);
//
//	/* Update limits and set FPS to default */
//	__v4l2_ctrl_modify_range(imx708->vblank, mode->vblank_min,
//				 ((1 << IMX708_LONG_EXP_SHIFT_MAX) *
//					IMX708_FRAME_LENGTH_MAX) - mode->height,
//				 1, mode->vblank_default);
//
//	/*
//	 * Currently PPL is fixed to the mode specified value, so hblank
//	 * depends on mode->width only, and is not changeable in any
//	 * way other than changing the mode.
//	 */
//	hblank = mode->line_length_pix - mode->width;
//	__v4l2_ctrl_modify_range(imx708->hblank, hblank, hblank, 1, hblank);
//}
//
//static int imx708_set_ctrl(struct v4l2_ctrl *ctrl)
//{
//	struct imx708 *imx708 =
//		container_of(ctrl->handler, struct imx708, ctrl_handler);
//	struct i2c_client *client = v4l2_get_subdevdata(&imx708->sd);
//	const struct imx708_mode *mode_list;
//	unsigned int code, num_modes;
//	int ret = 0;
//
//	switch (ctrl->id) {
//	case V4L2_CID_VBLANK:
//		/*
//		 * The VBLANK control may change the limits of usable exposure,
//		 * so check and adjust if necessary.
//		 */
//		imx708_adjust_exposure_range(imx708, ctrl);
//		break;
//
//	case V4L2_CID_WIDE_DYNAMIC_RANGE:
//		/*
//		 * The WIDE_DYNAMIC_RANGE control can also be applied immediately
//		 * as it doesn't set any registers. Don't do anything if the mode
//		 * already matches.
//		 */
//		if (imx708->mode && imx708->mode->hdr != ctrl->val) {
//			code = imx708_get_format_code(imx708);
//			get_mode_table(code, &mode_list, &num_modes, ctrl->val);
//			imx708->mode = v4l2_find_nearest_size(mode_list,
//							      num_modes,
//							      width, height,
//							      imx708->mode->width,
//							      imx708->mode->height);
//			imx708_set_framing_limits(imx708);
//		}
//		break;
//	}
//
//	/*
//	 * Applying V4L2 control value only happens
//	 * when power is up for streaming
//	 */
//	if (pm_runtime_get_if_in_use(&client->dev) == 0)
//		return 0;
//
//	switch (ctrl->id) {
//	case V4L2_CID_ANALOGUE_GAIN:
//		imx708_set_analogue_gain(imx708, ctrl->val);
//		break;
//	case V4L2_CID_EXPOSURE:
//		ret = imx708_set_exposure(imx708, ctrl->val);
//		break;
//	case V4L2_CID_DIGITAL_GAIN:
//		ret = imx708_write_reg(imx708, IMX708_REG_DIGITAL_GAIN,
//				       IMX708_REG_VALUE_16BIT, ctrl->val);
//		break;
//	case V4L2_CID_TEST_PATTERN:
//		ret = imx708_write_reg(imx708, IMX708_REG_TEST_PATTERN,
//				       IMX708_REG_VALUE_16BIT,
//				       imx708_test_pattern_val[ctrl->val]);
//		break;
//	case V4L2_CID_TEST_PATTERN_RED:
//		ret = imx708_write_reg(imx708, IMX708_REG_TEST_PATTERN_R,
//				       IMX708_REG_VALUE_16BIT, ctrl->val);
//		break;
//	case V4L2_CID_TEST_PATTERN_GREENR:
//		ret = imx708_write_reg(imx708, IMX708_REG_TEST_PATTERN_GR,
//				       IMX708_REG_VALUE_16BIT, ctrl->val);
//		break;
//	case V4L2_CID_TEST_PATTERN_BLUE:
//		ret = imx708_write_reg(imx708, IMX708_REG_TEST_PATTERN_B,
//				       IMX708_REG_VALUE_16BIT, ctrl->val);
//		break;
//	case V4L2_CID_TEST_PATTERN_GREENB:
//		ret = imx708_write_reg(imx708, IMX708_REG_TEST_PATTERN_GB,
//				       IMX708_REG_VALUE_16BIT, ctrl->val);
//		break;
//	case V4L2_CID_HFLIP:
//	case V4L2_CID_VFLIP:
//		ret = imx708_write_reg(imx708, IMX708_REG_ORIENTATION, 1,
//				       imx708->hflip->val |
//				       imx708->vflip->val << 1);
//		break;
//	case V4L2_CID_VBLANK:
//		ret = imx708_set_frame_length(imx708,
//					      imx708->mode->height + ctrl->val);
//		break;
//	case V4L2_CID_NOTIFY_GAINS:
//		ret = imx708_write_reg(imx708, IMX708_REG_COLOUR_BALANCE_BLUE,
//				       IMX708_REG_VALUE_16BIT,
//				       ctrl->p_new.p_u32[0]);
//		if (ret)
//			break;
//		ret = imx708_write_reg(imx708, IMX708_REG_COLOUR_BALANCE_RED,
//				       IMX708_REG_VALUE_16BIT,
//				       ctrl->p_new.p_u32[3]);
//		break;
//	case V4L2_CID_WIDE_DYNAMIC_RANGE:
//		/* Already handled above. */
//		break;
//	default:
//		dev_info(&client->dev,
//			 "ctrl(id:0x%x,val:0x%x) is not handled\n",
//			 ctrl->id, ctrl->val);
//		ret = -EINVAL;
//		break;
//	}
//
//	pm_runtime_put(&client->dev);
//
//	return ret;
//}
//
//static const struct v4l2_ctrl_ops imx708_ctrl_ops = {
//	.s_ctrl = imx708_set_ctrl,
//};
//
//static int imx708_enum_mbus_code(struct v4l2_subdev *sd,
//				 struct v4l2_subdev_state *sd_state,
//				 struct v4l2_subdev_mbus_code_enum *code)
//{
//	struct imx708 *imx708 = to_imx708(sd);
//
//	if (code->pad >= NUM_PADS)
//		return -EINVAL;
//
//	if (code->pad == IMAGE_PAD) {
//		if (code->index >= (ARRAY_SIZE(codes) / 4))
//			return -EINVAL;
//
//		code->code = imx708_get_format_code(imx708);
//	} else {
//		if (code->index > 0)
//			return -EINVAL;
//
//		code->code = MEDIA_BUS_FMT_SENSOR_DATA;
//	}
//
//	return 0;
//}
//
//static int imx708_enum_frame_size(struct v4l2_subdev *sd,
//				  struct v4l2_subdev_state *sd_state,
//				  struct v4l2_subdev_frame_size_enum *fse)
//{
//	struct imx708 *imx708 = to_imx708(sd);
//
//	if (fse->pad >= NUM_PADS)
//		return -EINVAL;
//
//	if (fse->pad == IMAGE_PAD) {
//		const struct imx708_mode *mode_list;
//		unsigned int num_modes;
//
//		get_mode_table(fse->code, &mode_list, &num_modes,
//			       imx708->hdr_mode->val);
//
//		if (fse->index >= num_modes)
//			return -EINVAL;
//
//		if (fse->code != imx708_get_format_code(imx708))
//			return -EINVAL;
//
//		fse->min_width = mode_list[fse->index].width;
//		fse->max_width = fse->min_width;
//		fse->min_height = mode_list[fse->index].height;
//		fse->max_height = fse->min_height;
//	} else {
//		if (fse->code != MEDIA_BUS_FMT_SENSOR_DATA || fse->index > 0)
//			return -EINVAL;
//
//		fse->min_width = IMX708_EMBEDDED_LINE_WIDTH;
//		fse->max_width = fse->min_width;
//		fse->min_height = IMX708_NUM_EMBEDDED_LINES;
//		fse->max_height = fse->min_height;
//	}
//
//	return 0;
//}
//
//static void imx708_reset_colorspace(struct v4l2_mbus_framefmt *fmt)
//{
//	fmt->colorspace = V4L2_COLORSPACE_RAW;
//	fmt->ycbcr_enc = V4L2_MAP_YCBCR_ENC_DEFAULT(fmt->colorspace);
//	fmt->quantization = V4L2_MAP_QUANTIZATION_DEFAULT(true,
//							  fmt->colorspace,
//							  fmt->ycbcr_enc);
//	fmt->xfer_func = V4L2_MAP_XFER_FUNC_DEFAULT(fmt->colorspace);
//}
//
//static void imx708_update_image_pad_format(struct imx708 *imx708,
//					   const struct imx708_mode *mode,
//					   struct v4l2_subdev_format *fmt)
//{
//	fmt->format.width = mode->width;
//	fmt->format.height = mode->height;
//	fmt->format.field = V4L2_FIELD_NONE;
//	imx708_reset_colorspace(&fmt->format);
//}
//
//static void imx708_update_metadata_pad_format(struct v4l2_subdev_format *fmt)
//{
//	fmt->format.width = IMX708_EMBEDDED_LINE_WIDTH;
//	fmt->format.height = IMX708_NUM_EMBEDDED_LINES;
//	fmt->format.code = MEDIA_BUS_FMT_SENSOR_DATA;
//	fmt->format.field = V4L2_FIELD_NONE;
//}
//
//static int imx708_get_pad_format(struct v4l2_subdev *sd,
//				 struct v4l2_subdev_state *sd_state,
//				 struct v4l2_subdev_format *fmt)
//{
//	struct imx708 *imx708 = to_imx708(sd);
//
//	if (fmt->pad >= NUM_PADS)
//		return -EINVAL;
//
//	mutex_lock(&imx708->mutex);
//
//	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
//		struct v4l2_mbus_framefmt *try_fmt =
//			v4l2_subdev_get_try_format(&imx708->sd, sd_state,
//						   fmt->pad);
//		/* update the code which could change due to vflip or hflip */
//		try_fmt->code = fmt->pad == IMAGE_PAD ?
//				imx708_get_format_code(imx708) :
//				MEDIA_BUS_FMT_SENSOR_DATA;
//		fmt->format = *try_fmt;
//	} else {
//		if (fmt->pad == IMAGE_PAD) {
//			imx708_update_image_pad_format(imx708, imx708->mode,
//						       fmt);
//			fmt->format.code = imx708_get_format_code(imx708);
//		} else {
//			imx708_update_metadata_pad_format(fmt);
//		}
//	}
//
//	mutex_unlock(&imx708->mutex);
//	return 0;
//}
//
//static int imx708_set_pad_format(struct v4l2_subdev *sd,
//				 struct v4l2_subdev_state *sd_state,
//				 struct v4l2_subdev_format *fmt)
//{
//	struct v4l2_mbus_framefmt *framefmt;
//	const struct imx708_mode *mode;
//	struct imx708 *imx708 = to_imx708(sd);
//
//	if (fmt->pad >= NUM_PADS)
//		return -EINVAL;
//
//	mutex_lock(&imx708->mutex);
//
//	if (fmt->pad == IMAGE_PAD) {
//		const struct imx708_mode *mode_list;
//		unsigned int num_modes;
//
//		/* Bayer order varies with flips */
//		fmt->format.code = imx708_get_format_code(imx708);
//
//		get_mode_table(fmt->format.code, &mode_list, &num_modes,
//			       imx708->hdr_mode->val);
//
//		mode = v4l2_find_nearest_size(mode_list,
//					      num_modes,
//					      width, height,
//					      fmt->format.width,
//					      fmt->format.height);
//		imx708_update_image_pad_format(imx708, mode, fmt);
//		if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
//			framefmt = v4l2_subdev_get_try_format(sd, sd_state,
//							      fmt->pad);
//			*framefmt = fmt->format;
//		} else {
//			imx708->mode = mode;
//			imx708_set_framing_limits(imx708);
//		}
//	} else {
//		if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
//			framefmt = v4l2_subdev_get_try_format(sd, sd_state,
//							      fmt->pad);
//			*framefmt = fmt->format;
//		} else {
//			/* Only one embedded data mode is supported */
//			imx708_update_metadata_pad_format(fmt);
//		}
//	}
//
//	mutex_unlock(&imx708->mutex);
//
//	return 0;
//}
//
//static const struct v4l2_rect *
//__imx708_get_pad_crop(struct imx708 *imx708, struct v4l2_subdev_state *sd_state,
//		      unsigned int pad, enum v4l2_subdev_format_whence which)
//{
//	switch (which) {
//	case V4L2_SUBDEV_FORMAT_TRY:
//		return v4l2_subdev_get_try_crop(&imx708->sd, sd_state, pad);
//	case V4L2_SUBDEV_FORMAT_ACTIVE:
//		return &imx708->mode->crop;
//	}
//
//	return NULL;
//}
//
//static int imx708_get_selection(struct v4l2_subdev *sd,
//				struct v4l2_subdev_state *sd_state,
//				struct v4l2_subdev_selection *sel)
//{
//	switch (sel->target) {
//	case V4L2_SEL_TGT_CROP: {
//		struct imx708 *imx708 = to_imx708(sd);
//
//		mutex_lock(&imx708->mutex);
//		sel->r = *__imx708_get_pad_crop(imx708, sd_state, sel->pad,
//						sel->which);
//		mutex_unlock(&imx708->mutex);
//
//		return 0;
//	}
//
//	case V4L2_SEL_TGT_NATIVE_SIZE:
//		sel->r.left = 0;
//		sel->r.top = 0;
//		sel->r.width = IMX708_NATIVE_WIDTH;
//		sel->r.height = IMX708_NATIVE_HEIGHT;
//
//		return 0;
//
//	case V4L2_SEL_TGT_CROP_DEFAULT:
//	case V4L2_SEL_TGT_CROP_BOUNDS:
//		sel->r.left = IMX708_PIXEL_ARRAY_LEFT;
//		sel->r.top = IMX708_PIXEL_ARRAY_TOP;
//		sel->r.width = IMX708_PIXEL_ARRAY_WIDTH;
//		sel->r.height = IMX708_PIXEL_ARRAY_HEIGHT;
//
//		return 0;
//	}
//
//	return -EINVAL;
//}
//
/* Start streaming */
static int imx708_start_streaming()
{
	//struct i2c_client *client = v4l2_get_subdevdata(&imx708->sd);
	const struct imx708_reg_list *reg_list, *freq_regs;
	int i, ret;
	uint32_t val;

	if (!imx708->common_regs_written) {
		ret = imx708_write_regs( mode_common_regs,
					ARRAY_SIZE(mode_common_regs));
//		ret = imx708_write_regs(imx708, mode_4608x2592_regs,
//							ARRAY_SIZE(mode_4608x2592_regs));
		if (ret) {
			printf( "%s failed to set common settings\n",
				__func__);
			return ret;
		}

		ret = imx708_read_reg( IMX708_REG_BASE_SPC_GAINS_L,
				      IMX708_REG_VALUE_08BIT, &val);
		if (ret == 0 && val == 0x40) {
			for (i = 0; i < 54 && ret == 0; i++) {
				ret = imx708_write_reg(
						       IMX708_REG_BASE_SPC_GAINS_L + i,
						       IMX708_REG_VALUE_08BIT,
						       pdaf_gains[0][i % 9]);
			}
			for (i = 0; i < 54 && ret == 0; i++) {
				ret = imx708_write_reg(
						       IMX708_REG_BASE_SPC_GAINS_R + i,
						       IMX708_REG_VALUE_08BIT,
						       pdaf_gains[1][i % 9]);
			}
		}
		if (ret) {
			printf( "%s failed to set PDAF gains\n",
				__func__);
			return ret;
		}

		imx708->common_regs_written = true;
	}

	/* Apply default values of current mode */
	reg_list = &imx708->mode->reg_list;
	ret = imx708_write_regs( reg_list->regs, reg_list->num_of_regs);
	if (ret) {
		printf( "%s failed to set mode\n", __func__);
		return ret;
	}

	/* Update the link frequency registers */
	freq_regs = &link_freq_regs[0];
	ret = imx708_write_regs( freq_regs->regs,
				freq_regs->num_of_regs);
	if (ret) {
		printf( "%s failed to set link frequency registers\n",
			__func__);
		return ret;
	}

//	imx708_write_reg(0x0340,1,0x05);
//	imx708_write_reg(0x0341,1,0x38);
//
	imx708_write_reg(0x0202,1,0x0A);
	imx708_write_reg(0x0203,1,0x00);

	imx708_write_reg(0x0204,1,0x00);
	imx708_write_reg(0x0205,1,0xF0);
//
//	imx708_write_reg(0x020E,1,0x01);
//	imx708_write_reg(0x020F,1,0x00);

//	imx708_write_reg(0x0101,1,0x03);
//	imx708_write_reg(0x0101,1,0x03);
//
//	imx708_write_reg(0x0600,1,0x00);
//	imx708_write_reg(0x0601,1,0x00);
//
//	imx708_write_reg(0x0602,1,0x0f);
//	imx708_write_reg(0x0603,1,0xff);
//	imx708_write_reg(0x0604,1,0x0f);
//	imx708_write_reg(0x0605,1,0xff);
//	imx708_write_reg(0x0606,1,0x0f);
//	imx708_write_reg(0x0607,1,0xff);
//	imx708_write_reg(0x0608,1,0x0f);
//	imx708_write_reg(0x0609,1,0xff);
//
//	imx708_write_reg(0x0b92,1,0x01);
//	imx708_write_reg(0x0b93,1,0xc7);
//
//	imx708_write_reg(0x0b90,1,0x01);
//	imx708_write_reg(0x0b91,1,0x8d);

	/* Apply customized values from user */
//	ret =  __v4l2_ctrl_handler_setup(imx708->sd.ctrl_handler);
//	if (ret)
//		return ret;

	/* set stream on register */
	imx708_write_reg( IMX708_REG_MODE_SELECT,
				IMX708_REG_VALUE_08BIT, IMX708_MODE_STREAMING);


	return 0;
}

/* Stop streaming */
static void imx708_stop_streaming()
{
	//struct i2c_client *client = v4l2_get_subdevdata(&imx708->sd);
	int ret;

	/* set stream off register */
	ret = imx708_write_reg( IMX708_REG_MODE_SELECT,
			       IMX708_REG_VALUE_08BIT, IMX708_MODE_STANDBY);
	if (ret)
		printf("%s failed to set stream\n", __func__);
}

int imx708_set_stream(int enable)
{
	//struct imx708 *imx708 = to_imx708(sd);
	//struct i2c_client *client = v4l2_get_subdevdata(sd);
	int ret = 0;

	if (imx708->streaming == enable) {
		//mutex_unlock(&imx708->mutex);
		return 0;
	}

	if (enable) {
		/*
		 * Apply default & customized values
		 * and then start streaming.
		 */
		ret = imx708_start_streaming();
		if (ret)
			goto err_rpm_put;
	} else {
		imx708_stop_streaming();
	}

	imx708->streaming = enable;

	return ret;

err_rpm_put:
err_unlock:

	return ret;
}


//static int __maybe_unused imx708_suspend(struct device *dev)
//{
//	struct i2c_client *client = to_i2c_client(dev);
//	struct v4l2_subdev *sd = i2c_get_clientdata(client);
//	struct imx708 *imx708 = to_imx708(sd);
//
//	if (imx708->streaming)
//		imx708_stop_streaming(imx708);
//
//	return 0;
//}
//
//static int __maybe_unused imx708_resume(struct device *dev)
//{
//	struct i2c_client *client = to_i2c_client(dev);
//	struct v4l2_subdev *sd = i2c_get_clientdata(client);
//	struct imx708 *imx708 = to_imx708(sd);
//	int ret;
//
//	if (imx708->streaming) {
//		ret = imx708_start_streaming(imx708);
//		if (ret)
//			goto error;
//	}
//
//	return 0;
//
//error:
//	imx708_stop_streaming(imx708);
//	imx708->streaming = 0;
//	return ret;
//}
//

/* Verify chip ID */
static int imx708_identify_module()
{
	int ret;
	uint32_t val;

	ret = imx708_read_reg( IMX708_REG_CHIP_ID,
			      IMX708_REG_VALUE_16BIT, &val);
	if (ret) {
		printf( "failed to read chip id %x, with error %d\n",
			IMX708_CHIP_ID, ret);
		return ret;
	}

	if (val != IMX708_CHIP_ID) {
		printf( "chip id mismatch: %x!=%x\n",
			IMX708_CHIP_ID, val);
		return -1;
	}

	usleep(50);

	ret = imx708_read_reg( 0x0000, IMX708_REG_VALUE_16BIT, &val);
	if (!ret) {
		printf( "camera module ID 0x%04x ", val);
		printf( "imx708%s%s\n",
			 val & 0x02 ? "_wide" : "",
			 val & 0x80 ? "_noir" : "");
	}

	return 0;
}

int imx708_init()
{
	int ret;

	imx708 = malloc(sizeof(*imx708));
	if (!imx708)
		return -1;

	XIicPs_Config *Config;
	Config = XIicPs_LookupConfig(XPAR_XIICPS_0_DEVICE_ID);
	if (NULL == Config) {
		return XST_FAILURE;
	}

	int Status = XIicPs_CfgInitialize(&(imx708->iic_imx708), Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	Status = XIicPs_SelfTest(&(imx708->iic_imx708));
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	XIicPs_SetSClk(&(imx708->iic_imx708), 100000);

	ret = imx708_identify_module();
	if (ret)
		goto error_power_off;

	/* Initialize default format */
	imx708_set_default_format();

	/* This needs the pm runtime to be registered. */
//	ret = imx708_init_controls(imx708);
//	if (ret)
//		goto error_pm_runtime;
//
//	/* Initialize subdev */
//	imx708->sd.internal_ops = &imx708_internal_ops;
//	imx708->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE |
//			    V4L2_SUBDEV_FL_HAS_EVENTS;
//	imx708->sd.entity.function = MEDIA_ENT_F_CAM_SENSOR;
//
//	/* Initialize source pads */
//	imx708->pad[IMAGE_PAD].flags = MEDIA_PAD_FL_SOURCE;
//	imx708->pad[METADATA_PAD].flags = MEDIA_PAD_FL_SOURCE;
//
//	ret = media_entity_pads_init(&imx708->sd.entity, NUM_PADS, imx708->pad);
//	if (ret) {
//		dev_err(dev, "failed to init entity pads: %d\n", ret);
//		goto error_handler_free;
//	}
//
//	ret = v4l2_async_register_subdev_sensor(&imx708->sd);
//	if (ret < 0) {
//		dev_err(dev, "failed to register sensor sub-device: %d\n", ret);
//		goto error_media_entity;
//	}

	return 0;

error_power_off:

	return ret;
}
