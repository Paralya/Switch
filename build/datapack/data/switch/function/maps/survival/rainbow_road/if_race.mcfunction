
#> switch:maps/survival/rainbow_road/if_race
#
# @executed	in switch:game
#
# @within	switch:maps/survival/rainbow_road/main [ in switch:game ]
#

scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 5

summon marker -6018 104 -6045 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:3, dz:2}}
summon marker -5943 79 -6040 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:2, dy:3, dz:1}}
summon marker -5971 86 -6023 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:5, dy:5, dz:1}}
summon marker -5949 87 -6001 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:1, dy:3, dz:2}}
summon marker -6013 98 -5972 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:4, dx:2, dy:3, dz:1}}
summon marker -5965 82 -5985 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:5, dx:1, dy:3, dz:2}}

forceload add -6018 -6045
forceload add -5943 -6040
forceload add -5971 -6023
forceload add -5949 -6001
forceload add -6013 -5972
forceload add -5965 -5985

