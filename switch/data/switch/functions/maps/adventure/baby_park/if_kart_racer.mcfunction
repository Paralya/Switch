
scoreboard players set #total_laps switch.data 7
scoreboard players set #total_checkpoints switch.data 3

summon marker 21000 100 21011 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:2, dy:5, dz:8}}
summon marker 20958 100 21000 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:8, dy:5, dz:2}}
summon marker 21001 100 20989 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:2, dy:5, dz:8}}
summon marker 21043 100 21000 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:8, dy:5, dz:2}}

forceload add 21000 21011
forceload add 20958 21000
forceload add 21001 20989
forceload add 21043 21000

