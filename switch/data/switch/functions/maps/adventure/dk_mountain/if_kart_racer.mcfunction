
scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 2

summon marker 19947 107 20556 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:7}}
summon marker 19716 156 20536 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:7, dy:5, dz:1}}
summon marker 19815 124 20526 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:1, dy:5, dz:7}}

forceload add 19947 20556
forceload add 19716 20536
forceload add 19815 20526

