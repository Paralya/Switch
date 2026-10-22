
#> switch:maps/survival/hills_land/if_race
#
# @executed	in switch:game
#
# @within	switch:maps/survival/hills_land/main [ in switch:game ]
#

scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 3

summon marker 7006 100 -5303 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:8}}
summon marker 6984 100 -5246 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:1, dy:5, dz:4}}
summon marker 7043 100 -5242 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:1, dy:5, dz:4}}
summon marker 7067 116 -5278 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:4, dy:5, dz:1}}

forceload add 7006 -5303
forceload add 6984 -5246
forceload add 7043 -5242
forceload add 7067 -5278

