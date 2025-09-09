################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'2',
                          "totalGeneratedCount"=>'9',
                          "totalReportCount"=>'7'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -rule "Clock_glitch04" -comment "Created by ICer on 24-Aug-2025 23:30:51"%',
                       "-rule"=>'"Clock_glitch04"',
                       "-comment"=>'"Created by ICer on 24-Aug-2025 23:30:51"',
                       "violations_waived"=>'7 8',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./system_top_spyglass/cdc/clock_reset_integrity/system_top_spyglass_waiver_file.awl"',
                       "waiverline"=>'1'
                      );

spyWaiversDataCount("totalWaivers"=>'1',
"totalWaiversApplied"=>'1',
"totalWaiversWithRegExp"=>'0',
"totalWaiversWithRuleSpecified"=>'1',
"totalWaiversWithIpSpecified"=>'0',
"totalWaiversWithFileLine"=>'0',
                         );

spyProhibitWaiverRules(                         );

spySetWaivedViolationNumberHash("");

1;
