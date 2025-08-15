
scoreboard players set #total_laps switch.data 2
scoreboard players set #total_checkpoints switch.data 6

summon marker 25106 101 24998 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:6, dy:5, dz:2}}
summon marker 25025 106 24942 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:2, dy:5, dz:6}}
summon marker 24970 102 24968 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:6, dy:5, dz:2}}
summon marker 24998 112 25044 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:6, dy:5, dz:2}}
summon marker 25026 126 24980 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:4, dx:2, dy:5, dz:6}}
summon marker 25057 115 24929 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:5, dx:6, dy:5, dz:2}}
summon marker 25045 115 25008 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:6, dx:6, dy:5, dz:2}}

forceload add 25106 24998
forceload add 25025 24942
forceload add 24970 24968
forceload add 24998 25044
forceload add 25026 24980
forceload add 25057 24929
forceload add 25052 25038

summon marker 25102 101 25031 {Tags:["switch.effect_block","switch.tm_blocks.reset"]}
summon marker 24972 102 25043 {Tags:["switch.effect_block","switch.tm_blocks.cruise_control"]}
summon marker 24968 102 25042 {Tags:["switch.effect_block","switch.tm_blocks.cruise_control"]}
summon marker 25066 115 25027 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker 25071 115 25027 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker 25071 115 25031 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker 25066 115 25031 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker 25047 115 25011 {Tags:["switch.effect_block","switch.tm_blocks.no_grip"]}
summon marker 25043 115 25011 {Tags:["switch.effect_block","switch.tm_blocks.no_grip"]}

forceload add 25102 25031
forceload add 24972 25043
forceload add 24968 25042
forceload add 25066 25027
forceload add 25071 25027
forceload add 25071 25031
forceload add 25066 25031
forceload add 25047 25011
forceload add 25043 25011

