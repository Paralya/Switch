
#> switch:maps/survival/rainbow_road/if_race
#
# @within	switch:maps/survival/rainbow_road/main
#

scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 5

summon marker 23982 104 23955 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:3, dz:2}}
summon marker 24057 79 23960 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:2, dy:3, dz:1}}
summon marker 24029 86 23977 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:5, dy:5, dz:1}}
summon marker 24051 87 23999 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:1, dy:3, dz:2}}
summon marker 23987 98 24028 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:4, dx:2, dy:3, dz:1}}
summon marker 24035 82 24015 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:5, dx:1, dy:3, dz:2}}

forceload add 23982 23955
forceload add 24057 23960
forceload add 24029 23977
forceload add 24051 23999
forceload add 23987 24028
forceload add 24035 24015

