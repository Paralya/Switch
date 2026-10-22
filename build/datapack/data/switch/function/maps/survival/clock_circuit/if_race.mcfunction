
#> switch:maps/survival/clock_circuit/if_race
#
# @executed	in switch:game
#
# @within	switch:maps/survival/clock_circuit/main [ in switch:game ]
#

scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 3

summon marker 6125 143 -4986 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:6}}
summon marker 6107 133 -5026 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:5, dy:5, dz:1}}
summon marker 6083 132 -5052 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:1, dy:5, dz:6}}
summon marker 6143 127 -5058 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:1, dy:5, dz:6}}

forceload add 6125 -4986
forceload add 6107 -5026
forceload add 6083 -5052
forceload add 6143 -5058

