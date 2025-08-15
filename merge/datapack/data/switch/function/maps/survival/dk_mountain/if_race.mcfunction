
scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 2

summon marker 19947 107 20556 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:1, dy:5, dz:7}}
summon marker 19716 156 20536 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:7, dy:5, dz:1}}
summon marker 19815 124 20526 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:1, dy:5, dz:7}}

forceload add 19947 20556
forceload add 19716 20536
forceload add 19815 20526

summon marker 19881 111 20554 {Tags:["switch.effect_block","switch.race.reactor_boost_block"]}
summon marker 19880 111 20558 {Tags:["switch.effect_block","switch.race.reactor_boost_block"]}

forceload add 19881 20554
forceload add 19880 20558

