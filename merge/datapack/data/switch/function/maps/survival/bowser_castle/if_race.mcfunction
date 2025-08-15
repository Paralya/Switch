
scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 4

summon marker 22068 130 22165 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:5, dy:5, dz:2}}
summon marker 22110 130 22098 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:6, dy:5, dz:2}}
summon marker 22133 135 22116 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:2, dy:5, dz:2}}
summon marker 22137 130 22168 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:2, dy:5, dz:2}}
summon marker 22140 136 22193 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:4, dx:2, dy:5, dz:2}}

forceload add 22068 22165
forceload add 22110 22098
forceload add 22133 22116
forceload add 22137 22168
forceload add 22140 22193

