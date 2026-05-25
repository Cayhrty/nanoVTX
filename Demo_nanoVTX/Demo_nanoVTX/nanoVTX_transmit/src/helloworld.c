#include <sleep.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "xgpiops.h"

#define led1pin 1
#define led2pin 49
#define led3pin 46

#define pa_enable_pin 18
#define lna_enable_pin 16

int Status;

XGpioPs Gpio; /* The driver instance for GPIO Device. */
XGpioPs_Config *GPIOConfigPtr;
///==========IMX708=============

#include "imx708.h"
#include "xcsiss.h"
#include "xdphy.h"
#include "xcsi.h"


#define XCSIRXSS_DEVICE_ID      XPAR_CSISS_0_DEVICE_ID

XCsiSs CsiRxSs;
XDphy* DphyInstancePtr;

u32 InitializeCsiRxSs(void)
{
  u32 Status = 0;
  XCsiSs_Config *CsiRxSsCfgPtr = NULL;

  CsiRxSsCfgPtr = XCsiSs_LookupConfig(XCSIRXSS_DEVICE_ID);
  if (!CsiRxSsCfgPtr) {
    printf("CSI2RxSs LookupCfg failed\r\n");
    return XST_FAILURE;
  }

  Status = XCsiSs_CfgInitialize(&CsiRxSs, CsiRxSsCfgPtr,
		                               CsiRxSsCfgPtr->BaseAddr);

  if (Status != XST_SUCCESS) {
    printf("CsiRxSs Cfg init failed - %x\r\n", Status);
    return Status;
  }

  DphyInstancePtr = CsiRxSs.DphyPtr;

  return XST_SUCCESS;

}

///========AXI DMA=======

#include "xaxidma.h"
#include "xparameters.h"
#include "xdebug.h"
#include "sleep.h"

// PKT_LEN IN Bytes
#define PKT_LEN		1327104
#define DMA_DEV_ID XPAR_AXIDMA_0_DEVICE_ID

int RxBuffer [2048];
unsigned int imageBuffer [1327104];
XAxiDma AxiDma;

int axidma_Init(u16 DeviceId);
int axidma_TransferRX(u8 *RxBufferPtr);


///==========AD9361 Driver============

#include <inttypes.h>
#include "app_config.h"
#include "ad9361_api.h"
#include "ad9361.h"

#include "parameters.h"
#include "no_os_spi.h"
#include "no_os_gpio.h"
#include "no_os_delay.h"

#ifdef XILINX_PLATFORM
#include <xparameters.h>
#include <xil_cache.h>
#include "spi_extra.h"
#include "gpio_extra.h"
#include "no_os_irq.h"
#endif

#include "irq_extra.h"

#include "axi_adc_core.h"
#include "axi_dac_core.h"
#include "axi_dmac.h"
#include "no_os_error.h"

#define AD9361_ADC_DAC_BYTES_PER_SAMPLE 2

#ifdef XILINX_PLATFORM
struct xil_spi_init_param xil_spi_param = {
	.type = SPI_PS,
	.flags = 0
};

struct xil_gpio_init_param xil_gpio_param = {
	.type = GPIO_PS,
	.device_id = GPIO_DEVICE_ID
};

#define GPIO_OPS	&xil_gpio_ops
#define SPI_OPS		&xil_spi_ops
#define GPIO_PARAM	&xil_gpio_param
#define SPI_PARAM	&xil_spi_param
#endif

#ifdef GENERIC_PLATFORM
#define GPIO_OPS	&generic_gpio_ops
#define SPI_OPS		&generic_spi_ops
#define GPIO_PARAM	NULL
#define SPI_PARAM	NULL
#endif
#ifdef XILINX_PLATFORM
#endif

AD9361_InitParam default_init_param = {
	/* Device selection */
	ID_AD9361,	// dev_sel
	/* Reference Clock */
	38400000UL,	//reference_clk_rate // ES1 38.4M
	/* Base Configuration */
	0,		//two_rx_two_tx_mode_enable *** adi,2rx-2tx-mode-enable
	0,		//one_rx_one_tx_mode_use_rx_num *** adi,1rx-1tx-mode-use-rx-num
	1,		//one_rx_one_tx_mode_use_tx_num *** adi,1rx-1tx-mode-use-tx-num
	0,		//frequency_division_duplex_mode_enable *** adi,frequency-division-duplex-mode-enable
	1,		//frequency_division_duplex_independent_mode_enable *** adi,frequency-division-duplex-independent-mode-enable
	0,		//tdd_use_dual_synth_mode_enable *** adi,tdd-use-dual-synth-mode-enable
	0,		//tdd_skip_vco_cal_enable *** adi,tdd-skip-vco-cal-enable
	0,		//tx_fastlock_delay_ns *** adi,tx-fastlock-delay-ns
	0,		//rx_fastlock_delay_ns *** adi,rx-fastlock-delay-ns
	0,		//rx_fastlock_pincontrol_enable *** adi,rx-fastlock-pincontrol-enable
	0,		//tx_fastlock_pincontrol_enable *** adi,tx-fastlock-pincontrol-enable
	0,		//external_rx_lo_enable *** adi,external-rx-lo-enable
	0,		//external_tx_lo_enable *** adi,external-tx-lo-enable
	5,		//dc_offset_tracking_update_event_mask *** adi,dc-offset-tracking-update-event-mask
	6,		//dc_offset_attenuation_high_range *** adi,dc-offset-attenuation-high-range
	5,		//dc_offset_attenuation_low_range *** adi,dc-offset-attenuation-low-range
	0x28,	//dc_offset_count_high_range *** adi,dc-offset-count-high-range
	0x32,	//dc_offset_count_low_range *** adi,dc-offset-count-low-range
	0,		//split_gain_table_mode_enable *** adi,split-gain-table-mode-enable
	MAX_SYNTH_FREF,	//trx_synthesizer_target_fref_overwrite_hz *** adi,trx-synthesizer-target-fref-overwrite-hz
	0,		// qec_tracking_slow_mode_enable *** adi,qec-tracking-slow-mode-enable
	/* ENSM Control */
	0,		//ensm_enable_pin_pulse_mode_enable *** adi,ensm-enable-pin-pulse-mode-enable
	0,		//ensm_enable_txnrx_control_enable *** adi,ensm-enable-txnrx-control-enable
	/* LO Control */
	700000000UL,	//rx_synthesizer_frequency_hz *** adi,rx-synthesizer-frequency-hz
	700000000UL,	//tx_synthesizer_frequency_hz *** adi,tx-synthesizer-frequency-hz
	1,				//tx_lo_powerdown_managed_enable *** adi,tx-lo-powerdown-managed-enable
	/* Rate & BW Control */
	// BBPLL , ADC  ,HB3  ,HB2 ,HB1 , ,DATA interface
	{983040000,245760000,245760000,122880000,61440000,61440000},// rx_path_clock_frequencies[6] *** adi,rx-path-clock-frequencies
	{983040000,245760000,245760000,122880000,61440000,61440000},// tx_path_clock_frequencies[6] *** adi,tx-path-clock-frequencies
	40000000,//rf_rx_bandwidth_hz *** adi,rf-rx-bandwidth-hz
	40000000,//rf_tx_bandwidth_hz *** adi,rf-tx-bandwidth-hz
	/* RF Port Control */
	0,		//rx_rf_port_input_select *** adi,rx-rf-port-input-select
	0,		//tx_rf_port_input_select *** adi,tx-rf-port-input-select
	/* TX Attenuation Control */
	2000,	//tx_attenuation_mdB *** adi,tx-attenuation-mdB
	0,		//update_tx_gain_in_alert_enable *** adi,update-tx-gain-in-alert-enable
	/* Reference Clock Control */
	1,		//xo_disable_use_ext_refclk_enable *** adi,xo-disable-use-ext-refclk-enable
	{8, 5920},	//dcxo_coarse_and_fine_tune[2] *** adi,dcxo-coarse-and-fine-tune
	CLKOUT_DISABLE,	//clk_output_mode_select *** adi,clk-output-mode-select
	/* Gain Control */
	2,		//gc_rx1_mode *** adi,gc-rx1-mode
	2,		//gc_rx2_mode *** adi,gc-rx2-mode
	58,		//gc_adc_large_overload_thresh *** adi,gc-adc-large-overload-thresh
	4,		//gc_adc_ovr_sample_size *** adi,gc-adc-ovr-sample-size
	47,		//gc_adc_small_overload_thresh *** adi,gc-adc-small-overload-thresh
	8192,	//gc_dec_pow_measurement_duration *** adi,gc-dec-pow-measurement-duration
	0,		//gc_dig_gain_enable *** adi,gc-dig-gain-enable
	800,	//gc_lmt_overload_high_thresh *** adi,gc-lmt-overload-high-thresh
	704,	//gc_lmt_overload_low_thresh *** adi,gc-lmt-overload-low-thresh
	24,		//gc_low_power_thresh *** adi,gc-low-power-thresh
	15,		//gc_max_dig_gain *** adi,gc-max-dig-gain
	0,		//gc_use_rx_fir_out_for_dec_pwr_meas_enable *** adi,gc-use-rx-fir-out-for-dec-pwr-meas-enable
	/* Gain MGC Control */
	1,		//mgc_dec_gain_step *** adi,mgc-dec-gain-step
	1,		//mgc_inc_gain_step *** adi,mgc-inc-gain-step
	0,		//mgc_rx1_ctrl_inp_enable *** adi,mgc-rx1-ctrl-inp-enable
	0,		//mgc_rx2_ctrl_inp_enable *** adi,mgc-rx2-ctrl-inp-enable
	0,		//mgc_split_table_ctrl_inp_gain_mode *** adi,mgc-split-table-ctrl-inp-gain-mode
	/* Gain AGC Control */
	10,		//agc_adc_large_overload_exceed_counter *** adi,agc-adc-large-overload-exceed-counter
	2,		//agc_adc_large_overload_inc_steps *** adi,agc-adc-large-overload-inc-steps
	0,		//agc_adc_lmt_small_overload_prevent_gain_inc_enable *** adi,agc-adc-lmt-small-overload-prevent-gain-inc-enable
	10,		//agc_adc_small_overload_exceed_counter *** adi,agc-adc-small-overload-exceed-counter
	4,		//agc_dig_gain_step_size *** adi,agc-dig-gain-step-size
	3,		//agc_dig_saturation_exceed_counter *** adi,agc-dig-saturation-exceed-counter
	1000,	//agc_gain_update_interval_us *** adi,agc-gain-update-interval-us
	0,		//agc_immed_gain_change_if_large_adc_overload_enable *** adi,agc-immed-gain-change-if-large-adc-overload-enable
	0,		//agc_immed_gain_change_if_large_lmt_overload_enable *** adi,agc-immed-gain-change-if-large-lmt-overload-enable
	10,		//agc_inner_thresh_high *** adi,agc-inner-thresh-high
	1,		//agc_inner_thresh_high_dec_steps *** adi,agc-inner-thresh-high-dec-steps
	12,		//agc_inner_thresh_low *** adi,agc-inner-thresh-low
	1,		//agc_inner_thresh_low_inc_steps *** adi,agc-inner-thresh-low-inc-steps
	10,		//agc_lmt_overload_large_exceed_counter *** adi,agc-lmt-overload-large-exceed-counter
	2,		//agc_lmt_overload_large_inc_steps *** adi,agc-lmt-overload-large-inc-steps
	10,		//agc_lmt_overload_small_exceed_counter *** adi,agc-lmt-overload-small-exceed-counter
	5,		//agc_outer_thresh_high *** adi,agc-outer-thresh-high
	2,		//agc_outer_thresh_high_dec_steps *** adi,agc-outer-thresh-high-dec-steps
	18,		//agc_outer_thresh_low *** adi,agc-outer-thresh-low
	2,		//agc_outer_thresh_low_inc_steps *** adi,agc-outer-thresh-low-inc-steps
	1,		//agc_attack_delay_extra_margin_us; *** adi,agc-attack-delay-extra-margin-us
	0,		//agc_sync_for_gain_counter_enable *** adi,agc-sync-for-gain-counter-enable
	/* Fast AGC */
	64,		//fagc_dec_pow_measuremnt_duration ***  adi,fagc-dec-pow-measurement-duration
	260,	//fagc_state_wait_time_ns ***  adi,fagc-state-wait-time-ns
	/* Fast AGC - Low Power */
	0,		//fagc_allow_agc_gain_increase ***  adi,fagc-allow-agc-gain-increase-enable
	5,		//fagc_lp_thresh_increment_time ***  adi,fagc-lp-thresh-increment-time
	1,		//fagc_lp_thresh_increment_steps ***  adi,fagc-lp-thresh-increment-steps
	/* Fast AGC - Lock Level (Lock Level is set via slow AGC inner high threshold) */
	1,		//fagc_lock_level_lmt_gain_increase_en ***  adi,fagc-lock-level-lmt-gain-increase-enable
	5,		//fagc_lock_level_gain_increase_upper_limit ***  adi,fagc-lock-level-gain-increase-upper-limit
	/* Fast AGC - Peak Detectors and Final Settling */
	1,		//fagc_lpf_final_settling_steps ***  adi,fagc-lpf-final-settling-steps
	1,		//fagc_lmt_final_settling_steps ***  adi,fagc-lmt-final-settling-steps
	3,		//fagc_final_overrange_count ***  adi,fagc-final-overrange-count
	/* Fast AGC - Final Power Test */
	0,		//fagc_gain_increase_after_gain_lock_en ***  adi,fagc-gain-increase-after-gain-lock-enable
	/* Fast AGC - Unlocking the Gain */
	0,		//fagc_gain_index_type_after_exit_rx_mode ***  adi,fagc-gain-index-type-after-exit-rx-mode
	1,		//fagc_use_last_lock_level_for_set_gain_en ***  adi,fagc-use-last-lock-level-for-set-gain-enable
	1,		//fagc_rst_gla_stronger_sig_thresh_exceeded_en ***  adi,fagc-rst-gla-stronger-sig-thresh-exceeded-enable
	5,		//fagc_optimized_gain_offset ***  adi,fagc-optimized-gain-offset
	10,		//fagc_rst_gla_stronger_sig_thresh_above_ll ***  adi,fagc-rst-gla-stronger-sig-thresh-above-ll
	1,		//fagc_rst_gla_engergy_lost_sig_thresh_exceeded_en ***  adi,fagc-rst-gla-engergy-lost-sig-thresh-exceeded-enable
	1,		//fagc_rst_gla_engergy_lost_goto_optim_gain_en ***  adi,fagc-rst-gla-engergy-lost-goto-optim-gain-enable
	10,		//fagc_rst_gla_engergy_lost_sig_thresh_below_ll ***  adi,fagc-rst-gla-engergy-lost-sig-thresh-below-ll
	8,		//fagc_energy_lost_stronger_sig_gain_lock_exit_cnt ***  adi,fagc-energy-lost-stronger-sig-gain-lock-exit-cnt
	1,		//fagc_rst_gla_large_adc_overload_en ***  adi,fagc-rst-gla-large-adc-overload-enable
	1,		//fagc_rst_gla_large_lmt_overload_en ***  adi,fagc-rst-gla-large-lmt-overload-enable
	0,		//fagc_rst_gla_en_agc_pulled_high_en ***  adi,fagc-rst-gla-en-agc-pulled-high-enable
	0,		//fagc_rst_gla_if_en_agc_pulled_high_mode ***  adi,fagc-rst-gla-if-en-agc-pulled-high-mode
	64,		//fagc_power_measurement_duration_in_state5 ***  adi,fagc-power-measurement-duration-in-state5
	2,		//fagc_large_overload_inc_steps *** adi,fagc-adc-large-overload-inc-steps
	/* RSSI Control */
	1,		//rssi_delay *** adi,rssi-delay
	1000,	//rssi_duration *** adi,rssi-duration
	3,		//rssi_restart_mode *** adi,rssi-restart-mode
	0,		//rssi_unit_is_rx_samples_enable *** adi,rssi-unit-is-rx-samples-enable
	1,		//rssi_wait *** adi,rssi-wait
	/* Aux ADC Control */
	256,	//aux_adc_decimation *** adi,aux-adc-decimation
	40000000UL,	//aux_adc_rate *** adi,aux-adc-rate
	/* AuxDAC Control */
	1,		//aux_dac_manual_mode_enable ***  adi,aux-dac-manual-mode-enable
	0,		//aux_dac1_default_value_mV ***  adi,aux-dac1-default-value-mV
	0,		//aux_dac1_active_in_rx_enable ***  adi,aux-dac1-active-in-rx-enable
	0,		//aux_dac1_active_in_tx_enable ***  adi,aux-dac1-active-in-tx-enable
	0,		//aux_dac1_active_in_alert_enable ***  adi,aux-dac1-active-in-alert-enable
	0,		//aux_dac1_rx_delay_us ***  adi,aux-dac1-rx-delay-us
	0,		//aux_dac1_tx_delay_us ***  adi,aux-dac1-tx-delay-us
	0,		//aux_dac2_default_value_mV ***  adi,aux-dac2-default-value-mV
	0,		//aux_dac2_active_in_rx_enable ***  adi,aux-dac2-active-in-rx-enable
	0,		//aux_dac2_active_in_tx_enable ***  adi,aux-dac2-active-in-tx-enable
	0,		//aux_dac2_active_in_alert_enable ***  adi,aux-dac2-active-in-alert-enable
	0,		//aux_dac2_rx_delay_us ***  adi,aux-dac2-rx-delay-us
	0,		//aux_dac2_tx_delay_us ***  adi,aux-dac2-tx-delay-us
	/* Temperature Sensor Control */
	256,	//temp_sense_decimation *** adi,temp-sense-decimation
	1000,	//temp_sense_measurement_interval_ms *** adi,temp-sense-measurement-interval-ms
	0xCE,	//temp_sense_offset_signed *** adi,temp-sense-offset-signed
	1,		//temp_sense_periodic_measurement_enable *** adi,temp-sense-periodic-measurement-enable
	/* Control Out Setup */
	0xFF,	//ctrl_outs_enable_mask *** adi,ctrl-outs-enable-mask
	0,		//ctrl_outs_index *** adi,ctrl-outs-index
	/* External LNA Control */
	0,		//elna_settling_delay_ns *** adi,elna-settling-delay-ns
	0,		//elna_gain_mdB *** adi,elna-gain-mdB
	0,		//elna_bypass_loss_mdB *** adi,elna-bypass-loss-mdB
	0,		//elna_rx1_gpo0_control_enable *** adi,elna-rx1-gpo0-control-enable
	0,		//elna_rx2_gpo1_control_enable *** adi,elna-rx2-gpo1-control-enable
	0,		//elna_gaintable_all_index_enable *** adi,elna-gaintable-all-index-enable
	/* Digital Interface Control */
	2,		//digital_interface_tune_skip_mode *** adi,digital-interface-tune-skip-mode
	1,		//digital_interface_tune_fir_disable *** adi,digital-interface-tune-fir-disable
	1,		//pp_tx_swap_enable *** adi,pp-tx-swap-enable
	1,		//pp_rx_swap_enable *** adi,pp-rx-swap-enable
	0,		//tx_channel_swap_enable *** adi,tx-channel-swap-enable
	0,		//rx_channel_swap_enable *** adi,rx-channel-swap-enable
	1,		//rx_frame_pulse_mode_enable *** adi,rx-frame-pulse-mode-enable
	0,		//two_t_two_r_timing_enable *** adi,2t2r-timing-enable
	0,		//invert_data_bus_enable *** adi,invert-data-bus-enable
	0,		//invert_data_clk_enable *** adi,invert-data-clk-enable
	0,		//fdd_alt_word_order_enable *** adi,fdd-alt-word-order-enable
	0,		//invert_rx_frame_enable *** adi,invert-rx-frame-enable
	0,		//fdd_rx_rate_2tx_enable *** adi,fdd-rx-rate-2tx-enable
	0,		//swap_ports_enable *** adi,swap-ports-enable
	1,		//single_data_rate_enable *** adi,single-data-rate-enable
	0,		//lvds_mode_enable *** adi,lvds-mode-enable
	1,		//half_duplex_mode_enable *** adi,half-duplex-mode-enable
	0,		//single_port_mode_enable *** adi,single-port-mode-enable
	0,		//full_port_enable *** adi,full-port-enable
	0,		//full_duplex_swap_bits_enable *** adi,full-duplex-swap-bits-enable
	0,		//delay_rx_data *** adi,delay-rx-data
	0,		//rx_data_clock_delay *** adi,rx-data-clock-delay
	6,		//rx_data_delay *** adi,rx-data-delay
	7,		//tx_fb_clock_delay *** adi,tx-fb-clock-delay
	0,		//tx_data_delay *** adi,tx-data-delay
#ifdef ALTERA_PLATFORM
	300,	//lvds_bias_mV *** adi,lvds-bias-mV
#else
	150,	//lvds_bias_mV *** adi,lvds-bias-mV
#endif
	0,		//lvds_rx_onchip_termination_enable *** adi,lvds-rx-onchip-termination-enable
	0,		//rx1rx2_phase_inversion_en *** adi,rx1-rx2-phase-inversion-enable
	0xFF,	//lvds_invert1_control *** adi,lvds-invert1-control
	0x0F,	//lvds_invert2_control *** adi,lvds-invert2-control
	/* GPO Control */
	0,		//gpo_manual_mode_enable *** adi,gpo-manual-mode-enable
	0,		//gpo_manual_mode_enable_mask *** adi,gpo-manual-mode-enable-mask
	0,		//gpo0_inactive_state_high_enable *** adi,gpo0-inactive-state-high-enable
	0,		//gpo1_inactive_state_high_enable *** adi,gpo1-inactive-state-high-enable
	0,		//gpo2_inactive_state_high_enable *** adi,gpo2-inactive-state-high-enable
	0,		//gpo3_inactive_state_high_enable *** adi,gpo3-inactive-state-high-enable
	0,		//gpo0_slave_rx_enable *** adi,gpo0-slave-rx-enable
	0,		//gpo0_slave_tx_enable *** adi,gpo0-slave-tx-enable
	0,		//gpo1_slave_rx_enable *** adi,gpo1-slave-rx-enable
	0,		//gpo1_slave_tx_enable *** adi,gpo1-slave-tx-enable
	0,		//gpo2_slave_rx_enable *** adi,gpo2-slave-rx-enable
	0,		//gpo2_slave_tx_enable *** adi,gpo2-slave-tx-enable
	0,		//gpo3_slave_rx_enable *** adi,gpo3-slave-rx-enable
	0,		//gpo3_slave_tx_enable *** adi,gpo3-slave-tx-enable
	0,		//gpo0_rx_delay_us *** adi,gpo0-rx-delay-us
	0,		//gpo0_tx_delay_us *** adi,gpo0-tx-delay-us
	0,		//gpo1_rx_delay_us *** adi,gpo1-rx-delay-us
	0,		//gpo1_tx_delay_us *** adi,gpo1-tx-delay-us
	0,		//gpo2_rx_delay_us *** adi,gpo2-rx-delay-us
	0,		//gpo2_tx_delay_us *** adi,gpo2-tx-delay-us
	0,		//gpo3_rx_delay_us *** adi,gpo3-rx-delay-us
	0,		//gpo3_tx_delay_us *** adi,gpo3-tx-delay-us
	/* Tx Monitor Control */
	37000,	//low_high_gain_threshold_mdB *** adi,txmon-low-high-thresh
	0,		//low_gain_dB *** adi,txmon-low-gain
	24,		//high_gain_dB *** adi,txmon-high-gain
	0,		//tx_mon_track_en *** adi,txmon-dc-tracking-enable
	0,		//one_shot_mode_en *** adi,txmon-one-shot-mode-enable
	511,	//tx_mon_delay *** adi,txmon-delay
	8192,	//tx_mon_duration *** adi,txmon-duration
	2,		//tx1_mon_front_end_gain *** adi,txmon-1-front-end-gain
	2,		//tx2_mon_front_end_gain *** adi,txmon-2-front-end-gain
	48,		//tx1_mon_lo_cm *** adi,txmon-1-lo-cm
	48,		//tx2_mon_lo_cm *** adi,txmon-2-lo-cm
	/* GPIO definitions */
	{
		.number = 54,
		.platform_ops = GPIO_OPS,
		.extra = GPIO_PARAM
	},		//gpio_resetb *** reset-gpios
	/* MCS Sync */
	{
		.number = -1,
		.platform_ops = GPIO_OPS,
		.extra = GPIO_PARAM
	},		//gpio_sync *** sync-gpios

	{
		.number = -1,
		.platform_ops = GPIO_OPS,
		.extra = GPIO_PARAM
	},		//gpio_cal_sw1 *** cal-sw1-gpios

	{
		.number = -1,
		.platform_ops = GPIO_OPS,
		.extra = GPIO_PARAM
	},		//gpio_cal_sw2 *** cal-sw2-gpios

	{
		.device_id = SPI_DEVICE_ID,
		.mode = NO_OS_SPI_MODE_1,
		.chip_select = SPI_CS,
		.platform_ops = SPI_OPS,
		.extra = SPI_PARAM
	},

	/* External LO clocks */
	NULL,	//(*ad9361_rfpll_ext_recalc_rate)()
	NULL,	//(*ad9361_rfpll_ext_round_rate)()
	NULL	//(*ad9361_rfpll_ext_set_rate)()
};

AD9361_RXFIRConfig rx_fir_config = {
	3, // rx
	0, // rx_gain
	1, // rx_dec
	{348,492,-434,-16,631,-909,413,764,-1818,1649,260,-3066,4545,-2099,-5461,21640,21640,-5461,-2099,4545,-3066,260,1649,-1818,764,413,-909,631,-16,-434,492,348,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, // rx_coef[128]
	32, // rx_coef_size
	{983040000,245760000,122880000,61440000,61440000,61440000}, // rx_path_clks[6]
	51641372 // rx_bandwidth
};

AD9361_TXFIRConfig tx_fir_config = {
	3, // tx
	0, // tx_gain
	1, // tx_int
	{-27,273,-39,-225,486,-448,-44,806,-1294,902,557,-2463,3418,-1650,-3983,20296,20296,-3983,-1650,3418,-2463,557,902,-1294,806,-44,-448,486,-225,-39,273,-27,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, // tx_coef[128]
	32, // tx_coef_size
	{983040000,245760000,122880000,61440000,61440000,61440000}, // tx_path_clks[6]
	33889517 // tx_bandwidth
};

struct ad9361_rf_phy *ad9361_phy;
uint64_t lo_freq_read ;

///===================================


int main()
{
    init_platform();

    GPIOConfigPtr = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
    Status = XGpioPs_CfgInitialize(&Gpio, GPIOConfigPtr, GPIOConfigPtr ->BaseAddr);
    if (Status != XST_SUCCESS) {
    	print("GpioInitError\n\r");
    	return XST_FAILURE;
    }

	default_init_param.gpio_resetb.number = GPIO_RESET_PIN;
	default_init_param.gpio_sync.number = -1;
	default_init_param.gpio_cal_sw1.number = -1;
	default_init_param.gpio_cal_sw2.number = -1;

	// after init ensm is in FDD mode
	ad9361_init(&ad9361_phy, &default_init_param);

	ad9361_set_tx_fir_config(ad9361_phy, tx_fir_config);
	ad9361_set_rx_fir_config(ad9361_phy, rx_fir_config);
	ad9361_set_rx_fir_en_dis(ad9361_phy,ENABLE);
	ad9361_set_tx_fir_en_dis(ad9361_phy,ENABLE);

	ad9361_set_rx_quad_track_en_dis(ad9361_phy,ENABLE);
	ad9361_set_rx_bbdc_track_en_dis(ad9361_phy,ENABLE);
	ad9361_set_rx_rfdc_track_en_dis(ad9361_phy,ENABLE);

	ad9361_phy->pdata->fdd = 0;
	printf("switch to TDD_TX mode:%ld\n",
			ad9361_set_en_state_machine_mode (ad9361_phy,ENSM_MODE_TX));
	ad9361_set_tx_lo_freq(ad9361_phy,5800000000); // min FREQ 46.875

	printf("switch to WAIT mode:%ld\n",
			ad9361_set_en_state_machine_mode (ad9361_phy,ENSM_MODE_WAIT));
	ad9361_set_tx_lo_freq(ad9361_phy,5800000000); // min FREQ 46.875

	ad9361_get_tx_lo_freq (ad9361_phy, &lo_freq_read);
	printf("TX_RF_LO_Freq:%"PRIu64"\n",lo_freq_read);

    XGpioPs_SetDirectionPin (&Gpio, led1pin, 1);
    XGpioPs_SetOutputEnablePin(&Gpio, led1pin, 1);
    XGpioPs_SetDirectionPin (&Gpio, led2pin, 1);
    XGpioPs_SetOutputEnablePin(&Gpio, led2pin, 1);
    XGpioPs_SetDirectionPin (&Gpio, led3pin, 1);
    XGpioPs_SetOutputEnablePin(&Gpio, led3pin, 1);

    XGpioPs_SetDirectionPin (&Gpio, pa_enable_pin, 1);
    XGpioPs_SetOutputEnablePin(&Gpio, pa_enable_pin, 1);
    XGpioPs_SetDirectionPin (&Gpio, lna_enable_pin, 1);
    XGpioPs_SetOutputEnablePin(&Gpio, lna_enable_pin, 1);

    XGpioPs_WritePin(&Gpio, lna_enable_pin, 0x0);
    XGpioPs_WritePin(&Gpio, pa_enable_pin, 0x0);

    imx708_init();

    InitializeCsiRxSs();

    XCsiSs_Reset(&CsiRxSs);
    XCsiSs_Activate(&CsiRxSs, XCSI_ENABLE);

    //printf("XcsissSelfTest:%d\n",XCsiSs_SelfTest(&CsiRxSs));

    //XCsiSs_Reset(&CsiRxSs);

    Status =  imx708_set_stream(1);
    printf("Set_stream:%d\n",Status);
    usleep(100000);
    XCsi_DataLaneInfo DataLane;
    XCsi_ClkLaneInfo ClkLane;
//    XCsi_GetClkLaneInfo(&CsiRxSs, &ClkLane);
//    XCsi_GetDataLaneInfo(&CsiRxSs, 0,&DataLane);
    //printf("Soterr:%d\n",DataLane.SoTErr);
    //printf("SotSyncerr:%d\n",DataLane.SoTSyncErr);
    //printf("StopState:%d\n",DataLane.StopState);
    axidma_Init(DMA_DEV_ID);

//   while(1){
    	usleep(100000);
    	axidma_TransferRX(imageBuffer);
//		XCsi_GetDataLaneInfo(&CsiRxSs, 0, &DataLane);
//		XCsi_GetClkLaneInfo(&CsiRxSs, &ClkLane);
//      printf("Soterr:%d\n",DataLane.SoTErr);
//      printf("SotSyncerr:%d\n",DataLane.SoTSyncErr);
//		printf("DataStop:%d\n",DataLane.StopState);
//		printf("Clk:%08x\n",XDphy_GetClkLaneStatus(DphyInstancePtr));
//		printf("Dat:%08x\n",XDphy_GetDataLaneStatus(DphyInstancePtr,1));
		usleep(100);
//		printf("ISR:0x%08x\n", XCsi_ReadReg(CsiRxSs.Config.BaseAddr,XCSI_ISR_OFFSET));
//		printf("VCX_FE:0x%08x\n", XCsi_ReadReg(CsiRxSs.Config.BaseAddr,XCSI_VCX_FE_OFFSET));
//
//		XCsi_WriteReg(CsiRxSs.Config.BaseAddr,XCSI_VCX_FE_OFFSET,0xffffffff);
//		XCsi_WriteReg(CsiRxSs.Config.BaseAddr,XCSI_ISR_OFFSET,0xffffffff);
//		printf("image:114514, 1327104, 1536, 864, IMG_FORMAT\n");

		printf("PIC:\n\n\n");
		uint8_t bytecnt=0;
		uint16_t byte1,byte2,byte3,byte4;
		// RAW10 Converter
		for(int i=1;i<PKT_LEN/2;){
			{
				byte1 = ((imageBuffer[i-1]&0xff) <<2) 		| ((imageBuffer[i]&0x3)>>0);
				byte2 = ((imageBuffer[i-1]&0xff00)>>6)		| ((imageBuffer[i]&0xC)>>2);
				byte3 = ((imageBuffer[i-1]&0xff0000)>>14)	|(((imageBuffer[i]&0x30)>>4));
				byte4 = ((imageBuffer[i-1]&0xff000000)>>22) |(((imageBuffer[i]&0xC0)>>6));
				printf("%d,%d,%d,%d,",byte1,byte2,byte3,byte4);
			}
			i++;
			{
				byte1 = ((imageBuffer[i-1]&0xff00)>>6)		| ((imageBuffer[i]&0x300)>>8);
				byte2 = ((imageBuffer[i-1]&0xff0000)>>14)	| ((imageBuffer[i]&0xC00)>>10);
				byte3 = ((imageBuffer[i-1]&0xff000000)>>22) | ((imageBuffer[i]&0x3000)>>12);
				byte4 = ((imageBuffer[i]&0xff)<<2)			| ((imageBuffer[i]&0xC000)>>14);
				printf("%d,%d,%d,%d,",byte1,byte2,byte3,byte4);
			}
			i++;
			{
				byte1 = ((imageBuffer[i-1]&0xff0000)>>14)	| ((imageBuffer[i]&0x30000)>>16);
				byte2 = ((imageBuffer[i-1]&0xff000000)>>22)	| ((imageBuffer[i]&0xC0000)>>18);
				byte3 = ((imageBuffer[i]&0xff)<<2)			| ((imageBuffer[i]&0x300000)>>20);
				byte4 = ((imageBuffer[i]&0xff00)>>6)		| ((imageBuffer[i]&0xC00000)>>22);
				printf("%d,%d,%d,%d,",byte1,byte2,byte3,byte4);
			}
			i++;
			{
				byte1 = ((imageBuffer[i-1]&0xff000000)>>22)	| ((imageBuffer[i]&0x3000000)>>24);
				byte2 = ((imageBuffer[i]&0xff)<<2)  		| ((imageBuffer[i]&0xC000000)>>26);
				byte3 = ((imageBuffer[i]&0xff00)>>6)		| ((imageBuffer[i]&0x30000000)>>28);
				byte4 = ((imageBuffer[i]&0xff0000)>>14)		| ((imageBuffer[i]&0xC0000000)>>30);
				printf("%d,%d,%d,%d,",byte1,byte2,byte3,byte4);
			}
			i = i+2 ;
		}

//		while(1);
//		printf("PIC:\n\n\n");

//   }
    while(1){
    	usleep(100000);
    	XGpioPs_WritePin(&Gpio, led1pin, 0x0);
    	XGpioPs_WritePin(&Gpio, led2pin, 0x0);
    	XGpioPs_WritePin(&Gpio, led3pin, 0x1);
		Xil_Out32(0x43C00014, 0x80000000);
		usleep(100000);
		Xil_Out32(0x43C00014, 0x00000000);
    	XGpioPs_WritePin(&Gpio, led1pin, 0x1);
    	XGpioPs_WritePin(&Gpio, led2pin, 0x1);
    	XGpioPs_WritePin(&Gpio, led3pin, 0x0);
    }
    cleanup_platform();
    return 0;
}

int axidma_Init(u16 DeviceId)
{
	XAxiDma_Config *CfgPtr;
	int Status;

	/* Initialize the XAxiDma device.
	 */
	CfgPtr = XAxiDma_LookupConfig(DeviceId);
	if (!CfgPtr) {
		xil_printf("No config found for %d\r\n", DeviceId);
		return XST_FAILURE;
	}

	Status = XAxiDma_CfgInitialize(&AxiDma, CfgPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}

	/* Disable interrupts, we use polling mode
	 */
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
						XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
						XAXIDMA_DMA_TO_DEVICE);

	/* Test finishes successfully
	 */
	return XST_SUCCESS;
}

int axidma_TransferRX(u8 *RxBufferPtr){
	int Status;

	/// Start Acquire
	Xil_Out32(0x43C00010, 0x80000000 | 256);

	Status = XAxiDma_SimpleTransfer(&AxiDma,(UINTPTR) RxBufferPtr,
			PKT_LEN*2, XAXIDMA_DEVICE_TO_DMA);

	Xil_Out32(0x43C00010, 0x00000000 | 256);

	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	while ((XAxiDma_Busy(&AxiDma,XAXIDMA_DEVICE_TO_DMA))) {
			/* Wait */
	}
	Xil_DCacheInvalidateRange((UINTPTR)RxBufferPtr, PKT_LEN*4);

	return XST_SUCCESS;
}

