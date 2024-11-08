
#> switch:maps/adventure/hills_land/if_kart_racer
#
# @within	switch:maps/adventure/hills_land/
#

scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 3

summon marker 20443 100 20073 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:8}}
summon marker 20421 100 20130 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:1, dy:5, dz:4}}
summon marker 20480 100 20134 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:1, dy:5, dz:4}}
summon marker 20504 116 20098 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:4, dy:5, dz:1}}

forceload add 20443 20073
forceload add 20421 20130
forceload add 20480 20134
forceload add 20504 20098

