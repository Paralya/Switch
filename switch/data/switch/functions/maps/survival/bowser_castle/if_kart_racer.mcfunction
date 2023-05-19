
scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 4

summon marker 21956 130 22052 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:5, dy:5, dz:2}}
summon marker 21998 130 21986 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:6, dy:5, dz:2}}
summon marker 22020 135 22004 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:2, dy:5, dz:2}}
summon marker 22025 130 22056 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:2, dy:5, dz:2}}
summon marker 22028 136 22081 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:4, dx:2, dy:5, dz:2}}

forceload add 21956 22052
forceload add 21998 21986
forceload add 22020 22004
forceload add 22025 22056
forceload add 22028 22081

