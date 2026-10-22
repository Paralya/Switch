
#> switch:maps/survival/dk_mountain/if_race
#
# @executed	in switch:game
#
# @within	switch:maps/survival/dk_mountain/main [ in switch:game ]
#

scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 2

summon marker 6510 107 -4820 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:7}}
summon marker 6279 156 -4840 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:7, dy:5, dz:1}}
summon marker 6378 124 -4850 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:1, dy:5, dz:7}}

forceload add 6510 -4820
forceload add 6279 -4840
forceload add 6378 -4850

summon marker 6444 111 -4822 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
summon marker 6443 111 -4818 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}

forceload add 6444 -4822
forceload add 6443 -4818

