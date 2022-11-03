
scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 2

summon marker 19920 114 20042 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:8}}
summon marker 19989 108 20137 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:8}}
summon marker 19915 108 20157 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:1, dy:5, dz:8}}
summon marker 19885 114 20085 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:8, dy:5, dz:1}}

forceload add 19920 20042
forceload add 19989 20137
forceload add 19915 20157
forceload add 19885 20085

