
#> switch:maps/survival/plains_routine/if_race
#
# @executed	in switch:game
#
# @within	switch:maps/survival/plains_routine/main [ in switch:game ]
#

scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 3

summon marker 6784 103 -5578 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:8}}
summon marker 6736 106 -5477 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:1, dy:5, dz:5}}
summon marker 6705 104 -5582 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:5, dy:5, dz:1}}
summon marker 6724 100 -5590 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:1, dy:3, dz:1}}
summon marker 6856 107 -5579 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:5, dy:5, dz:1}}

forceload add 6784 -5578
forceload add 6736 -5477
forceload add 6705 -5582
forceload add 6724 -5590
forceload add 6856 -5579

summon marker 6715 100 -5569 {Tags:["switch.effect_block","switch.tm_blocks.reactor_boost"]}
forceload add 6715 -5569

