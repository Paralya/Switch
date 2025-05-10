
#> switch:maps/survival/epsilon_lthc_circuit/if_race
#
# @within	???
#

scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 4

summon marker 18010 101 18000 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:5}}
summon marker 18011 101 18087 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:1, dy:5, dz:4}}
summon marker 17912 101 17999 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:4, dy:5, dz:1}}
summon marker 18036 92 17985 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:4, dy:5, dz:1}}
summon marker 17975 108 18042 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:4, dx:4, dy:5, dz:1}}

forceload add 18010 18000
forceload add 18011 18087
forceload add 17912 17999
forceload add 18036 17985
forceload add 17975 18042

