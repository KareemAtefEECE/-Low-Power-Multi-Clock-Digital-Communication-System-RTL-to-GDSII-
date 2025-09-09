################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'3',
                          "totalGeneratedCount"=>'5',
                          "totalReportCount"=>'2'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -du "CLK_GATE" -rule "InferLatch" -msg "Latch inferred for signal \'Latch\' in module \'CLK_GATE\'" -comment "Created by ICer on 24-Aug-2025 17:39:29"%',
                       "-du"=>'"CLK_GATE"',
                       "-rule"=>'"InferLatch"',
                       "-msg"=>'q%Latch inferred for signal \'Latch\' in module \'CLK_GATE\'%',
                       "-comment"=>'"Created by ICer on 24-Aug-2025 17:39:29"',
                       "violations_waived"=>'8',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/lint/lint_rtl/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'1'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -du "SYS_CTRL" -rule "InferLatch" -msg "Latch inferred for signal \'Address[3:0]\' in module \'SYS_CTRL\'" -comment "Created by ICer on 24-Aug-2025 17:56:54"%',
                       "-du"=>'"SYS_CTRL"',
                       "-rule"=>'"InferLatch"',
                       "-msg"=>'q%Latch inferred for signal \'Address[3:0]\' in module \'SYS_CTRL\'%',
                       "-comment"=>'"Created by ICer on 24-Aug-2025 17:56:54"',
                       "violations_waived"=>'9',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/lint/lint_rtl/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'2'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'3',
                       "waiverCmd"=>'q%waive  -du "edge_bit_counter" -rule "STARC05-2.11.3.1" -msg "Combinational and sequential parts of an FSM described in same always block" -comment "Created by ICer on 24-Aug-2025 18:31:57"%',
                       "-du"=>'"edge_bit_counter"',
                       "-rule"=>'q%STARC05-2.11.3.1%',
                       "-msg"=>'q%Combinational and sequential parts of an FSM described in same always block%',
                       "-comment"=>'"Created by ICer on 24-Aug-2025 18:31:57"',
                       "violations_waived"=>'4',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/lint/lint_rtl/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'3'
                      );

spyWaiversDataCount("totalWaivers"=>'3',
"totalWaiversApplied"=>'3',
"totalWaiversWithRegExp"=>'0',
"totalWaiversWithRuleSpecified"=>'3',
"totalWaiversWithIpSpecified"=>'0',
"totalWaiversWithFileLine"=>'0',
                         );

spyProhibitWaiverRules(                         );

spySetWaivedViolationNumberHash("");

1;
