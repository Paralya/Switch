
#> switch:maps/survival/mario_circuit/if_race
#
# @executed	in switch:game
#
# @within	switch:maps/survival/mario_circuit/main [ in switch:game ]
#

scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 2

summon marker 6969 100 -5789 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:8, dy:5, dz:2}}
summon marker 7039 100 -5838 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:2, dy:5, dz:5}}
summon marker 7044 100 -5770 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:2, dy:5, dz:3}}

forceload add 6969 -5789
forceload add 7039 -5838
forceload add 7044 -5770

