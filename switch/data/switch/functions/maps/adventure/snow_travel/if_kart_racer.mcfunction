
scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 3

summon marker 22961 88 22948 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:7}}
summon marker 23048 88 22973 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:3, dy:5, dz:1}}
summon marker 23038 88 22984 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:1, dy:5, dz:3}}
summon marker 23011 85 23031 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:4, dy:5, dz:4}}
summon marker 22936 86 23014 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:3, dy:5, dz:1}}

forceload add 22961 22948
forceload add 23048 22973
forceload add 23038 22984
forceload add 23011 23031
forceload add 22936 23014

