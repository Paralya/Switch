
scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 3

summon marker 20221 103 19798 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:8}}
summon marker 20173 106 19899 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:1, dy:5, dz:5}}
summon marker 20142 104 19794 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:5, dy:5, dz:1}}
summon marker 20161 100 19786 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:1, dy:3, dz:1}}
summon marker 20293 107 19797 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:5, dy:5, dz:1}}

forceload add 20221 19798
forceload add 20173 19899
forceload add 20142 19794
forceload add 20161 19786
forceload add 20293 19797

summon marker 20152 100 19807 {Tags:["switch.effect_block","switch.race.reactor_boost_block"]}
forceload add 20152 19807

