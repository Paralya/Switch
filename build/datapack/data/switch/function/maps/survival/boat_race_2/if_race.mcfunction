
#> switch:maps/survival/boat_race_2/if_race
#
# @executed	in switch:game
#
# @within	switch:maps/survival/boat_race_2/main [ in switch:game ]
#

scoreboard players set #total_laps switch.data 1
scoreboard players set #total_checkpoints switch.data 2

# Starting line
summon marker -7928 159 -5907 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:14, dy:4, dz:4}}

# Checkpoints
summon marker -7934 135 -5939 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:5, dy:4, dz:2}}
summon marker -7954 121 -5947 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:5, dy:4, dz:2}}

# Finish line
summon marker -7963 113 -5980 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:4, dy:4, dz:4}}

forceload add -7928 -5907
forceload add -7934 -5939
forceload add -7954 -5947
forceload add -7963 -5980

