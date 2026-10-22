
#> switch:maps/survival/dishorreur/if_race
#
# @within	(public)
#

scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 2

summon marker 5992 101 2000 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:4}}
summon marker 5972 101 2031 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:1, dy:5, dz:6}}
summon marker 6027 101 2019 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:3, dy:5, dz:1}}

forceload add 5992 2000
forceload add 5972 2031
forceload add 6027 2019

