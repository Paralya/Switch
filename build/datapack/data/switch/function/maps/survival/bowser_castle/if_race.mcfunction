
#> switch:maps/survival/bowser_castle/if_race
#
# @executed	in switch:game
#
# @within	switch:maps/survival/bowser_castle/main [ in switch:game ]
#

scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 4

summon marker -5932 130 -1835 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:5, dy:5, dz:2}}
summon marker -5890 130 -1902 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:6, dy:5, dz:2}}
summon marker -5867 135 -1884 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:2, dy:5, dz:2}}
summon marker -5863 130 -1832 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:2, dy:5, dz:2}}
summon marker -5860 136 -1807 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:4, dx:2, dy:5, dz:2}}

forceload add -5932 -1835
forceload add -5890 -1902
forceload add -5867 -1884
forceload add -5863 -1832
forceload add -5860 -1807

