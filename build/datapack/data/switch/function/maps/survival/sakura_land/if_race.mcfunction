
#> switch:maps/survival/sakura_land/if_race
#
# @executed	in switch:game
#
# @within	switch:maps/survival/sakura_land/main [ in switch:game ]
#

scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 3

summon marker 19920 114 20042 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:8}}
summon marker 19989 108 20137 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:1, dy:5, dz:8}}
summon marker 19915 108 20157 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:1, dy:5, dz:8}}
summon marker 19885 114 20085 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:8, dy:5, dz:1}}

forceload add 19920 20042
forceload add 19989 20137
forceload add 19915 20157
forceload add 19885 20085

summon marker 19943 108 20152 {Tags:["switch.effect_block","switch.tm_blocks.cruise_control"]}
summon marker 19941 108 20151 {Tags:["switch.effect_block","switch.tm_blocks.cruise_control"]}
summon marker 19880 114 20124 {Tags:["switch.effect_block","switch.tm_blocks.no_steering"]}
summon marker 19884 114 20124 {Tags:["switch.effect_block","switch.tm_blocks.no_steering"]}
summon marker 19888 114 20124 {Tags:["switch.effect_block","switch.tm_blocks.no_steering"]}

forceload add 19943 20152
forceload add 19941 20151
forceload add 19880 20124
forceload add 19884 20124
forceload add 19888 20124

