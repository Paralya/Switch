
#> switch:maps/survival/airship_fortress/if_race
#
# @executed	in switch:game
#
# @within	switch:maps/survival/airship_fortress/main [ in switch:game ]
#

scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 3

summon marker 20725 121 20319 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:5}}
summon marker 20631 122 20336 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:5, dy:5, dz:1}}
summon marker 20639 108 20375 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:2, dy:5, dz:1}}
summon marker 20750 131 20382 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:4, dy:5, dz:1}}

forceload add 20725 20319
forceload add 20631 20336
forceload add 20639 20375
forceload add 20750 20382

summon marker 20639 108 20336 {Tags:["switch.effect_block","switch.race.engine_off_block"]}
forceload add 20639 20336

