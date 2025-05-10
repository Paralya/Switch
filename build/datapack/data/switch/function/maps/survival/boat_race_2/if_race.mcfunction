
#> switch:maps/survival/boat_race_2/if_race
#
# @within	switch:maps/survival/boat_race_2/main
#

scoreboard players set #total_laps switch.data 1
scoreboard players set #total_checkpoints switch.data 1

summon marker 51015 115 50990 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:4, dy:4, dz:4}}
summon marker 50978 101 50999 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:5, dy:4, dz:4}}

forceload add 51015 50990
forceload add 50978 50999

