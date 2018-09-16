# Constrain clock domain crossings for NTP time
set_max_delay 5 -from [get_pins ntp_clock_topA/ntp_clock_0/NTP_TIME_reg[*]/Q] -to [get_pins network_path_*/tss/ntp_time_a_sync_reg[*]/D]
set_max_delay 5 -from [get_pins ntp_clock_topB/ntp_clock_0/NTP_TIME_reg[*]/Q] -to [get_pins network_path_*/tss/ntp_time_b_sync_reg[*]/D]
