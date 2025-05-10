
#> switch:maps/survival/fast_circuit/if_race
#
# @within	switch:maps/survival/fast_circuit/main
#

scoreboard players set #total_laps switch.data 5
scoreboard players set #total_checkpoints switch.data 1

summon marker 20212 91 19584 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:6, dy:5, dz:1}}
summon marker 20175 91 19584 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:6, dy:5, dz:1}}

forceload add 20212 19584
forceload add 20175 19584

