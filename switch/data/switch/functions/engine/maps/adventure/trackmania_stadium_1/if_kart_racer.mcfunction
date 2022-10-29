
scoreboard players set #total_laps switch.data 2
scoreboard players set #total_checkpoints switch.data 6

summon marker 25106 101 24998 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:6, dy:5, dz:2}}
summon marker 25025 106 24942 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:2, dy:5, dz:6}}
summon marker 24970 102 24968 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:6, dy:5, dz:2}}
summon marker 24998 112 25044 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:6, dy:5, dz:2}}
summon marker 25026 126 24980 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:4, dx:2, dy:5, dz:6}}
summon marker 25057 115 24929 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:5, dx:6, dy:5, dz:2}}
summon marker 25052 102 25038 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:6, dx:2, dy:5, dz:6}}

forceload add 25106 24998
forceload add 25025 24942
forceload add 24970 24968
forceload add 24998 25044
forceload add 25026 24980
forceload add 25057 24929
forceload add 25052 25038

