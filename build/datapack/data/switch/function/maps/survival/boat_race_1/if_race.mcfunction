
#> switch:maps/survival/boat_race_1/if_race
#
# @executed	in switch:game
#
# @within	switch:maps/survival/boat_race_1/main [ in switch:game ]
#

scoreboard players set #total_laps switch.data 1
scoreboard players set #total_checkpoints switch.data 8

summon marker 201 160 -3861 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:3, dy:5, dz:8}}
summon marker 95 151 -3900 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:3, dy:5, dz:8}}
summon marker 122 118 -3833 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:3, dy:5, dz:8}}
summon marker 214 112 -3922 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:3, dy:5, dz:8}}
summon marker 115 139 -3926 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:4, dx:3, dy:5, dz:8}}
summon marker 111 127 -3893 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:5, dx:3, dy:5, dz:8}}
summon marker 195 127 -3911 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:6, dx:3, dy:5, dz:8}}
summon marker 246 126 -3838 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:7, dx:3, dy:5, dz:8}}
summon marker 231 155 -3844 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:8, dx:3, dy:5, dz:8}}

forceload add 201 -3861
forceload add 95 -3900
forceload add 122 -3833
forceload add 214 -3922
forceload add 115 -3926
forceload add 111 -3893
forceload add 195 -3911
forceload add 246 -3838
forceload add 231 -3844

