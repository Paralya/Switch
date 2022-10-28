

scoreboard players set #total_checkpoints switch.data 4

summon marker 21956 99 22052 {Tags:["switch.checkpoint"],data:{cp:0, dx:5, dy:5, dz:2}}
summon marker 21998 99 21986 {Tags:["switch.checkpoint"],data:{cp:1, dx:6, dy:5, dz:2}}
summon marker 22020 104 22004 {Tags:["switch.checkpoint"],data:{cp:2, dx:2, dy:5, dz:2}}
summon marker 22025 99 22056 {Tags:["switch.checkpoint"],data:{cp:3, dx:2, dy:5, dz:2}}
summon marker 22028 105 22081 {Tags:["switch.checkpoint"],data:{cp:4, dx:2, dy:5, dz:2}}

forceload add 21956 22052
forceload add 21998 21986
forceload add 22020 22004
forceload add 22025 22056
forceload add 22028 22081

