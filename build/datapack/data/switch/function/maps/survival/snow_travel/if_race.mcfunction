
#> switch:maps/survival/snow_travel/if_race
#
# @executed	in switch:game
#
# @within	switch:maps/survival/snow_travel/main [ in switch:game ]
#

scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 3

summon marker -5935 136 -3956 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:7}}
summon marker -5848 136 -3932 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:3, dy:5, dz:1}}
summon marker -5875 138 -3920 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:1, dy:5, dz:3}}
summon marker -5894 133 -3870 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:4, dy:5, dz:4}}
summon marker -5960 134 -3888 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:3, dy:5, dz:1}}

forceload add -5935 -3956
forceload add -5848 -3932
forceload add -5875 -3920
forceload add -5894 -3870
forceload add -5960 -3888

summon marker -5933 136 -3958 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker -5933 136 -3954 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker -5857 133 -3897 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker -5893 132 -3942 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}

forceload add -5933 -3958
forceload add -5933 -3954
forceload add -5857 -3897
forceload add -5893 -3942

