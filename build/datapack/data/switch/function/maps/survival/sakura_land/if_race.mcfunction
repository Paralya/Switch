
#> switch:maps/survival/sakura_land/if_race
#
# @executed	in switch:game
#
# @within	switch:maps/survival/sakura_land/main [ in switch:game ]
#

scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 3

summon marker 6483 114 -5334 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:8}}
summon marker 6552 108 -5239 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:1, dy:5, dz:8}}
summon marker 6478 108 -5219 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:1, dy:5, dz:8}}
summon marker 6448 114 -5291 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:8, dy:5, dz:1}}

forceload add 6483 -5334
forceload add 6552 -5239
forceload add 6478 -5219
forceload add 6448 -5291

summon marker 6506 108 -5224 {Tags:["switch.effect_block","switch.tm_blocks.cruise_control"]}
summon marker 6504 108 -5225 {Tags:["switch.effect_block","switch.tm_blocks.cruise_control"]}
summon marker 6443 114 -5252 {Tags:["switch.effect_block","switch.tm_blocks.no_steering"]}
summon marker 6447 114 -5252 {Tags:["switch.effect_block","switch.tm_blocks.no_steering"]}
summon marker 6451 114 -5252 {Tags:["switch.effect_block","switch.tm_blocks.no_steering"]}

forceload add 6506 -5224
forceload add 6504 -5225
forceload add 6443 -5252
forceload add 6447 -5252
forceload add 6451 -5252

