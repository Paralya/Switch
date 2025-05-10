
#> switch:maps/survival/mario_circuit/if_race
#
# @within	switch:maps/survival/mario_circuit/main
#

scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 2

summon marker 20406 100 19587 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:8, dy:5, dz:2}}
summon marker 20476 100 19538 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:2, dy:5, dz:5}}
summon marker 20481 100 19606 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:2, dy:5, dz:3}}

forceload add 20406 19587
forceload add 20476 19538
forceload add 20481 19606

