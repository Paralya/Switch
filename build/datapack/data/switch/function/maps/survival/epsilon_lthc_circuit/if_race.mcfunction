
#> switch:maps/survival/epsilon_lthc_circuit/if_race
#
# @within	(public)
#

scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 4

summon marker -3990 101 2000 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:5}}
summon marker -3989 101 2087 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:1, dy:5, dz:4}}
summon marker -4088 101 1999 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:4, dy:5, dz:1}}
summon marker -3964 92 1985 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:4, dy:5, dz:1}}
summon marker -4025 108 2042 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:4, dx:4, dy:5, dz:1}}

forceload add -3990 2000
forceload add -3989 2087
forceload add -4088 1999
forceload add -3964 1985
forceload add -4025 2042

