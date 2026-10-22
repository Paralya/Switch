
#> switch:maps/survival/trackmania_stadium_1/if_race
#
# @executed	in switch:game
#
# @within	switch:maps/survival/trackmania_stadium_1/main [ in switch:game ]
#

scoreboard players set #total_laps switch.data 2
scoreboard players set #total_checkpoints switch.data 6

summon marker -3894 101 -6002 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:6, dy:5, dz:2}}
summon marker -3975 106 -6058 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:2, dy:5, dz:6}}
summon marker -4030 102 -6032 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:6, dy:5, dz:2}}
summon marker -4002 112 -5956 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:6, dy:5, dz:2}}
summon marker -3974 126 -6020 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:4, dx:2, dy:5, dz:6}}
summon marker -3943 115 -6071 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:5, dx:6, dy:5, dz:2}}
summon marker -3955 115 -5992 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:6, dx:6, dy:5, dz:2}}

forceload add -3894 -6002
forceload add -3975 -6058
forceload add -4030 -6032
forceload add -4002 -5956
forceload add -3974 -6020
forceload add -3943 -6071
forceload add -3948 -5962

summon marker -3898 101 -5969 {Tags:["switch.effect_block","switch.tm_blocks.reset"]}
summon marker -4028 102 -5957 {Tags:["switch.effect_block","switch.tm_blocks.cruise_control"]}
summon marker -4032 102 -5958 {Tags:["switch.effect_block","switch.tm_blocks.cruise_control"]}
summon marker -3934 115 -5973 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker -3929 115 -5973 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker -3929 115 -5969 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker -3934 115 -5969 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker -3953 115 -5989 {Tags:["switch.effect_block","switch.tm_blocks.no_grip"]}
summon marker -3957 115 -5989 {Tags:["switch.effect_block","switch.tm_blocks.no_grip"]}

forceload add -3898 -5969
forceload add -4028 -5957
forceload add -4032 -5958
forceload add -3934 -5973
forceload add -3929 -5973
forceload add -3929 -5969
forceload add -3934 -5969
forceload add -3953 -5989
forceload add -3957 -5989

