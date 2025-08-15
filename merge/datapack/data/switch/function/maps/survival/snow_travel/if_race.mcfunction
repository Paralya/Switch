
scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 3

summon marker 23065 136 23044 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:7}}
summon marker 23152 136 23068 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:3, dy:5, dz:1}}
summon marker 23125 138 23080 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:1, dy:5, dz:3}}
summon marker 23106 133 23130 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:4, dy:5, dz:4}}
summon marker 23040 134 23112 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:3, dy:5, dz:1}}

forceload add 23065 23044
forceload add 23152 23068
forceload add 23125 23080
forceload add 23106 23130
forceload add 23040 23112

summon marker 23067 136 23042 {Tags:["switch.effect_block","switch.race.reactor_boost_block"]}
summon marker 23067 136 23046 {Tags:["switch.effect_block","switch.race.reactor_boost_block"]}
summon marker 23143 133 23103 {Tags:["switch.effect_block","switch.race.reactor_boost_block"]}
summon marker 23107 132 23058 {Tags:["switch.effect_block","switch.race.reactor_boost_block"]}

forceload add 23067 23042
forceload add 23067 23046
forceload add 23143 23103
forceload add 23107 23058

