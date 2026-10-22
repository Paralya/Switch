
#> switch:maps/survival/city_race/if_race
#
# @executed	in switch:game
#
# @within	switch:maps/survival/city_race/main [ in switch:game ]
#

scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 3

summon marker 6501 100 -5718 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:7}}
summon marker 6500 113 -5707 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:4}}
summon marker 6560 113 -5751 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:8, dy:5, dz:1}}
summon marker 6478 113 -5780 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:8, dy:5, dz:1}}
summon marker 6549 113 -5850 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:1, dy:5, dz:8}}
summon marker 6448 113 -5817 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:8, dy:5, dz:1}}

forceload add 6501 -5718
forceload add 6500 -5707
forceload add 6560 -5751
forceload add 6478 -5780
forceload add 6549 -5850
forceload add 6448 -5817

