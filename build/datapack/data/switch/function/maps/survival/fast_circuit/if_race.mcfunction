
#> switch:maps/survival/fast_circuit/if_race
#
# @executed	in switch:game
#
# @within	switch:maps/survival/fast_circuit/main [ in switch:game ]
#

scoreboard players set #total_laps switch.data 5
scoreboard players set #total_checkpoints switch.data 1

summon marker 6775 91 -5792 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:6, dy:5, dz:1}}
summon marker 6738 91 -5792 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:6, dy:5, dz:1}}

forceload add 6775 -5792
forceload add 6738 -5792

