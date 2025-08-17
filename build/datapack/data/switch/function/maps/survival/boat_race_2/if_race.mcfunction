
#> switch:maps/survival/boat_race_2/if_race
#
# @executed	in switch:game
#
# @within	switch:maps/survival/boat_race_2/main [ in switch:game ]
#

scoreboard players set #total_laps switch.data 1
scoreboard players set #total_checkpoints switch.data 2

# Starting line
summon marker 51072 159 51093 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:14, dy:4, dz:4}}

# Checkpoints
summon marker 51066 135 51061 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:5, dy:4, dz:2}}
summon marker 51046 121 51053 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:5, dy:4, dz:2}}

# Finish line
summon marker 51037 113 51020 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:4, dy:4, dz:4}}

forceload add 51072 51093
forceload add 51066 51061
forceload add 51046 51053
forceload add 51037 51020

