
#> switch:maps/survival/city_race/if_race
#
# @within	switch:maps/survival/city_race/main
#

scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 3

summon marker 19938 100 19658 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:7}}
summon marker 19937 113 19669 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:4}}
summon marker 19997 113 19625 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:8, dy:5, dz:1}}
summon marker 19915 113 19596 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:8, dy:5, dz:1}}
summon marker 19986 113 19526 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:1, dy:5, dz:8}}
summon marker 19885 113 19559 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:8, dy:5, dz:1}}

forceload add 19938 19658
forceload add 19937 19669
forceload add 19997 19625
forceload add 19915 19596
forceload add 19986 19526
forceload add 19885 19559

