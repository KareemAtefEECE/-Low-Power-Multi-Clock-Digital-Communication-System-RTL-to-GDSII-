################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'31',
                          "totalGeneratedCount"=>'0',
                          "totalReportCount"=>'0'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -rule "Ac_conv01" -msg "5 synchronizers (SYSTEM_TOP.U0_ASYN_FIFO.U1_SYNC_R2W.q[0][1:0],SYSTEM_TOP.U0_ASYN_FIFO.U1_SYNC_R2W.q[0][3:2] ...) converge on MUX \'SYSTEM_TOP.WR_DATA[0]\' (same source divergence)" -comment "Created by ICer on 24-Aug-2025 23:24:54"%',
                       "-rule"=>'"Ac_conv01"',
                       "-msg"=>'q%5 synchronizers (SYSTEM_TOP.U0_ASYN_FIFO.U1_SYNC_R2W.q[0][1:0],SYSTEM_TOP.U0_ASYN_FIFO.U1_SYNC_R2W.q[0][3:2] ...) converge on MUX \'SYSTEM_TOP.WR_DATA[0]\' (same source divergence)%',
                       "-comment"=>'"Created by ICer on 24-Aug-2025 23:24:54"',
                       "violations_waived"=>'81',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./system_top_spyglass/cdc/cdc_verify_struct/system_top_spyglass_waiver_file.awl"',
                       "waiverline"=>'1'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -rule "Ac_conv02" -comment "Created by ICer on 24-Aug-2025 23:25:08"%',
                       "-rule"=>'"Ac_conv02"',
                       "-comment"=>'"Created by ICer on 24-Aug-2025 23:25:08"',
                       "violations_waived"=>'74 77',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./system_top_spyglass/cdc/cdc_verify_struct/system_top_spyglass_waiver_file.awl"',
                       "waiverline"=>'2'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'3',
                       "waiverCmd"=>'q%waive  -rule "Ac_conv04" -comment "Created by ICer on 24-Aug-2025 23:25:28"%',
                       "-rule"=>'"Ac_conv04"',
                       "-comment"=>'"Created by ICer on 24-Aug-2025 23:25:28"',
                       "violations_waived"=>'82',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./system_top_spyglass/cdc/cdc_verify_struct/system_top_spyglass_waiver_file.awl"',
                       "waiverline"=>'3'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'4',
                       "waiverCmd"=>'q%waive  -rule "Ac_coherency06" -comment "Created by ICer on 24-Aug-2025 23:25:28"%',
                       "-rule"=>'"Ac_coherency06"',
                       "-comment"=>'"Created by ICer on 24-Aug-2025 23:25:28"',
                       "violations_waived"=>'36 38 40 42 44 46',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./system_top_spyglass/cdc/cdc_verify_struct/system_top_spyglass_waiver_file.awl"',
                       "waiverline"=>'4'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'5',
                       "waiverCmd"=>'q%waive  -rule "Ac_glitch03" -msg "Destination flop \'SYSTEM_TOP.U0_DATA_SYNC.U0_BIT_SYNC.q[0][0]\' clocked by \'SYSTEM_TOP.REF_CLK\' can glitch (2 source(s), 1 domain(s)). Reason :\'Source reconverges\'" -comment "Created by ICer on 24-Aug-2025 23:27:55"%',
                       "-rule"=>'"Ac_glitch03"',
                       "-msg"=>'q%Destination flop \'SYSTEM_TOP.U0_DATA_SYNC.U0_BIT_SYNC.q[0][0]\' clocked by \'SYSTEM_TOP.REF_CLK\' can glitch (2 source(s), 1 domain(s)). Reason :\'Source reconverges\'%',
                       "-comment"=>'"Created by ICer on 24-Aug-2025 23:27:55"',
                       "violations_waived"=>'69',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./system_top_spyglass/cdc/cdc_verify_struct/system_top_spyglass_waiver_file.awl"',
                       "waiverline"=>'5'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'6',
                       "waiverCmd"=>'q%waive  -rule "Ac_glitch03" -msg "Destination flop \'SYSTEM_TOP.U0_ASYN_FIFO.U1_SYNC_R2W.q[0][2:0]\' clocked by \'SYSTEM_TOP.REF_CLK\' can glitch (1 source(s), 1 domain(s)). Reason :\'Sources from same domain in fanin\'" -comment "Created by ICer on 24-Aug-2025 23:27:55"%',
                       "-rule"=>'"Ac_glitch03"',
                       "-msg"=>'q%Destination flop \'SYSTEM_TOP.U0_ASYN_FIFO.U1_SYNC_R2W.q[0][2:0]\' clocked by \'SYSTEM_TOP.REF_CLK\' can glitch (1 source(s), 1 domain(s)). Reason :\'Sources from same domain in fanin\'%',
                       "-comment"=>'"Created by ICer on 24-Aug-2025 23:27:55"',
                       "violations_waived"=>'70',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./system_top_spyglass/cdc/cdc_verify_struct/system_top_spyglass_waiver_file.awl"',
                       "waiverline"=>'6'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'7',
                       "waiverCmd"=>'q%waive  -rule "Ac_glitch03" -msg "Destination flop \'SYSTEM_TOP.U0_ASYN_FIFO.U0_SYNC_W2R.q[0][2:0]\' clocked by \'SYSTEM_TOP.TX_CLK\' can glitch (1 source(s), 1 domain(s)). Reason :\'Sources from same domain in fanin\'" -comment "Created by ICer on 24-Aug-2025 23:27:55"%',
                       "-rule"=>'"Ac_glitch03"',
                       "-msg"=>'q%Destination flop \'SYSTEM_TOP.U0_ASYN_FIFO.U0_SYNC_W2R.q[0][2:0]\' clocked by \'SYSTEM_TOP.TX_CLK\' can glitch (1 source(s), 1 domain(s)). Reason :\'Sources from same domain in fanin\'%',
                       "-comment"=>'"Created by ICer on 24-Aug-2025 23:27:55"',
                       "violations_waived"=>'71',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./system_top_spyglass/cdc/cdc_verify_struct/system_top_spyglass_waiver_file.awl"',
                       "waiverline"=>'7'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'8',
                       "waiverCmd"=>'q%waive  -rule "Setup_port01" -comment "Created by ICer on 24-Aug-2025 23:28:07"%',
                       "-rule"=>'"Setup_port01"',
                       "-comment"=>'"Created by ICer on 24-Aug-2025 23:28:07"',
                       "violations_waived"=>'65 67',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./system_top_spyglass/cdc/cdc_verify_struct/system_top_spyglass_waiver_file.awl"',
                       "waiverline"=>'8'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'9',
                       "waiverCmd"=>'q%waive  -rule "Ac_unsync01" -comment "Created by ICer on 24-Aug-2025 23:36:40"%',
                       "-rule"=>'"Ac_unsync01"',
                       "-comment"=>'"Created by ICer on 24-Aug-2025 23:36:40"',
                       "violations_waived"=>'10 18 19 21 25 26 28 29',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./system_top_spyglass/cdc/cdc_verify_struct/system_top_spyglass_waiver_file.awl"',
                       "waiverline"=>'9'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'10',
                       "waiverCmd"=>'q%waive  -rule "Ac_unsync02" -comment "Created by ICer on 24-Aug-2025 23:36:40"%',
                       "-rule"=>'"Ac_unsync02"',
                       "-comment"=>'"Created by ICer on 24-Aug-2025 23:36:40"',
                       "violations_waived"=>'9 12 15 17 22 23 27 30',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./system_top_spyglass/cdc/cdc_verify_struct/system_top_spyglass_waiver_file.awl"',
                       "waiverline"=>'10'
                      );

spyWaiversDataCount("totalWaivers"=>'10',
"totalWaiversApplied"=>'10',
"totalWaiversWithRegExp"=>'0',
"totalWaiversWithRuleSpecified"=>'10',
"totalWaiversWithIpSpecified"=>'0',
"totalWaiversWithFileLine"=>'0',
                         );

spyProhibitWaiverRules(                         );

spySetWaivedViolationNumberHash("");

1;
