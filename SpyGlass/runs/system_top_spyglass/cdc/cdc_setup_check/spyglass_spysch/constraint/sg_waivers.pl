################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'2',
                          "totalGeneratedCount"=>'11',
                          "totalReportCount"=>'9'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q!waive  -rule "Setup_port01" -msg "Port coverage for top design unit \'SYSTEM_TOP\' is: \'1\' (25.00 %) port(s) not fully constrained" -comment "Created by ICer on 24-Aug-2025 22:24:47"!',
                       "-rule"=>'"Setup_port01"',
                       "-msg"=>'q!Port coverage for top design unit \'SYSTEM_TOP\' is: \'1\' (25.00 %) port(s) not fully constrained!',
                       "-comment"=>'"Created by ICer on 24-Aug-2025 22:24:47"',
                       "violations_waived"=>'17',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./system_top_spyglass/cdc/cdc_setup_check/system_top_spyglass_waiver_file.awl"',
                       "waiverline"=>'1'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -rule "Setup_port01" -msg "Abstracted sgdc file for input ports of block \'SYSTEM_TOP\' is generated" -comment "Created by ICer on 24-Aug-2025 22:25:01"%',
                       "-rule"=>'"Setup_port01"',
                       "-msg"=>'q%Abstracted sgdc file for input ports of block \'SYSTEM_TOP\' is generated%',
                       "-comment"=>'"Created by ICer on 24-Aug-2025 22:25:01"',
                       "violations_waived"=>'19',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./system_top_spyglass/cdc/cdc_setup_check/system_top_spyglass_waiver_file.awl"',
                       "waiverline"=>'2'
                      );

spyWaiversDataCount("totalWaivers"=>'2',
"totalWaiversApplied"=>'2',
"totalWaiversWithRegExp"=>'0',
"totalWaiversWithRuleSpecified"=>'2',
"totalWaiversWithIpSpecified"=>'0',
"totalWaiversWithFileLine"=>'0',
                         );

spyProhibitWaiverRules(                         );

spySetWaivedViolationNumberHash("");

1;
