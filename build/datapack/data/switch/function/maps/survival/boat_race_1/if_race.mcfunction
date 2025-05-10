
#> switch:maps/survival/boat_race_1/if_race
#
# @within	switch:maps/survival/boat_race_1/main
#

scoreboard players set #total_laps switch.data 1
scoreboard players set #total_checkpoints switch.data 1

summon marker 5025 58 5030 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:3, dy:5, dz:8}}
summon marker 5049 72 4980 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:3, dy:5, dz:8}}

forceload add 5025 5030
forceload add 5049 4980

