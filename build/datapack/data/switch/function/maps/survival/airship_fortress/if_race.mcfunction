
#> switch:maps/survival/airship_fortress/if_race
#
# @executed	in switch:game
#
# @within	switch:maps/survival/airship_fortress/main [ in switch:game ]
#

scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 3

summon marker 7288 121 -5057 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:5}}
summon marker 7194 122 -5040 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:5, dy:5, dz:1}}
summon marker 7202 108 -5001 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:2, dy:5, dz:1}}
summon marker 7313 131 -4994 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:4, dy:5, dz:1}}

forceload add 7288 -5057
forceload add 7194 -5040
forceload add 7202 -5001
forceload add 7313 -4994

summon marker 7202 108 -5040 {Tags:["switch.effect_block","switch.tm_blocks.engine_off"]}
forceload add 7202 -5040

