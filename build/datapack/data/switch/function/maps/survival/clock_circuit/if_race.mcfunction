
#> switch:maps/survival/clock_circuit/if_race
#
# @executed	in switch:game
#
# @within	switch:maps/survival/clock_circuit/main [ in switch:game ]
#

scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 3

summon marker 19562 143 20390 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:6}}
summon marker 19544 133 20350 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:5, dy:5, dz:1}}
summon marker 19520 132 20324 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:1, dy:5, dz:6}}
summon marker 19580 127 20318 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:1, dy:5, dz:6}}

forceload add 19562 20390
forceload add 19544 20350
forceload add 19520 20324
forceload add 19580 20318

