
#> switch:maps/survival/baby_park/if_race
#
# @executed	in switch:game
#
# @within	switch:maps/survival/baby_park/main [ in switch:game ]
#

scoreboard players set #total_laps switch.data 7
scoreboard players set #total_checkpoints switch.data 3

summon marker -4000 131 11 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:2, dy:5, dz:8}}
summon marker -4042 131 0 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:8, dy:5, dz:2}}
summon marker -3999 131 -11 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:2, dy:5, dz:8}}
summon marker -3957 131 0 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:8, dy:5, dz:2}}

forceload add -4000 11
forceload add -4042 0
forceload add -3999 -11
forceload add -3957 0

