
scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 2

summon marker 32992 101 33000 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:4}}
summon marker 32972 101 33031 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:1, dy:5, dz:6}}
summon marker 33027 101 33019 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:3, dy:5, dz:1}}

forceload add 32992 33000
forceload add 32972 33031
forceload add 33027 33019

