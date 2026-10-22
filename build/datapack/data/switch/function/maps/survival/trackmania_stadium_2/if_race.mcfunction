
#> switch:maps/survival/trackmania_stadium_2/if_race
#
# @executed	in switch:game
#
# @within	switch:maps/survival/trackmania_stadium_2/main [ in switch:game ]
#

scoreboard players set #total_laps switch.data 1
scoreboard players set #total_checkpoints switch.data 12
scoreboard players set #remaining_time switch.data 600

summon marker 4106 101 5998 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:6, dy:5, dz:2}}
summon marker 4106 114 5932 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:6, dy:5, dz:2}}
summon marker 4076 114 5945 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:2, dy:5, dz:3}}
summon marker 4059 114 5970 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:6, dy:5, dz:2}}
summon marker 4059 114 6024 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:4, dx:2, dy:5, dz:6}}
summon marker 4022 137 6030 {Tags:["switch.checkpoint"]						,data:{cp:5, dx:2, dy:5, dz:5}}
summon marker 3960 122 6030 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:6, dx:1, dy:5, dz:3}}
summon marker 3960 139 6046 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:7, dx:3, dy:5, dz:2}}
summon marker 3998 139 6053 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:8, dx:2, dy:5, dz:3}}
summon marker 3896 151 6015 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:9, dx:2, dy:5, dz:2}}
summon marker 3902 151 5983 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:10, dx:3, dy:5, dz:2}}
summon marker 4052 129 5963 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:11, dx:2, dy:5, dz:3}}
summon marker 4077 100 6056 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:12, dx:2, dy:5, dz:3}}
summon marker 4034 111 5956 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:3, dy:5, dz:1}}

forceload add 4106 5998
forceload add 4106 5932
forceload add 4076 5945
forceload add 4059 5970
forceload add 4059 6024
forceload add 4022 6030
forceload add 3960 6030
forceload add 3960 6046
forceload add 3998 6053
forceload add 3896 6015
forceload add 3902 5983
forceload add 4052 5963
forceload add 4077 6056
forceload add 4034 5956

summon marker 4104 101 5995 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker 4108 101 5995 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker 4104 114 5932 {Tags:["switch.effect_block","switch.tm_blocks.reset"]}
summon marker 4108 114 5932 {Tags:["switch.effect_block","switch.tm_blocks.reset"]}
summon marker 4059 114 5939 {Tags:["switch.effect_block","switch.tm_blocks.cruise_control"]}
summon marker 4059 114 5942 {Tags:["switch.effect_block","switch.tm_blocks.no_steering"]}
summon marker 4061 114 5974 {Tags:["switch.effect_block","switch.tm_blocks.engine_off"]}
summon marker 4057 114 5974 {Tags:["switch.effect_block","switch.tm_blocks.engine_off"]}
summon marker 4085 127 6024 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker 4001 131 6030 {Tags:["switch.effect_block","switch.tm_blocks.reset"]}
summon marker 3957 122 6030 {Tags:["switch.effect_block","switch.tm_blocks.cruise_control"]}
summon marker 3998 139 6053 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker 3907 151 5963 {Tags:["switch.effect_block","switch.tm_blocks.engine_off"]}
summon marker 4086 101 5963 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker 4074 101 6056 {Tags:["switch.effect_block","switch.tm_blocks.no_grip"]}
summon marker 4034 101 6057 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}

forceload add 4104 5995
forceload add 4108 5995
forceload add 4104 5932
forceload add 4108 5932
forceload add 4059 5939
forceload add 4059 5942
forceload add 4061 5974
forceload add 4057 5974
forceload add 4085 6030
forceload add 4001 6030
forceload add 3957 6030
forceload add 3998 6053
forceload add 3907 5963
forceload add 4086 5963
forceload add 4074 6056
forceload add 4034 6057

