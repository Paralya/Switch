
scoreboard players set #total_laps switch.data 1
scoreboard players set #total_checkpoints switch.data 10
scoreboard players set #remaining_time switch.data 600

summon marker 37106 101 36998 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:6, dy:5, dz:2}}
summon marker 37106 114 36932 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:6, dy:5, dz:2}}
summon marker 37076 114 36945 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:2, dy:5, dz:3}}
summon marker 37059 114 36970 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:6, dy:5, dz:2}}
summon marker 37059 114 37024 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:4, dx:2, dy:5, dz:6}}
summon marker 37022 137 37030 {Tags:["switch.checkpoint"]						,data:{cp:5, dx:2, dy:5, dz:5}}
summon marker 36960 122 37030 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:6, dx:1, dy:5, dz:3}}
summon marker 36960 139 37046 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:7, dx:3, dy:5, dz:2}}
summon marker 36998 139 37053 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:8, dx:2, dy:5, dz:3}}
summon marker 36896 151 37015 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:9, dx:2, dy:5, dz:2}}
summon marker 36902 151 36983 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:10, dx:3, dy:5, dz:2}}

forceload add 37106 36998
forceload add 37106 36932
forceload add 37076 36945
forceload add 37059 36970
forceload add 37059 37024
forceload add 37022 37030
forceload add 36960 37030
forceload add 36960 37046
forceload add 36998 37053
forceload add 36896 37015

summon marker 37104 101 36995 {Tags:["switch.effect_block","switch.kart_racer.reactor_boost_block"]}
summon marker 37108 101 36995 {Tags:["switch.effect_block","switch.kart_racer.reactor_boost_block"]}
summon marker 37104 114 36932 {Tags:["switch.effect_block","switch.kart_racer.reset_block"]}
summon marker 37108 114 36932 {Tags:["switch.effect_block","switch.kart_racer.reset_block"]}
summon marker 37059 114 36939 {Tags:["switch.effect_block","switch.kart_racer.cruise_control_block"]}
summon marker 37059 114 36942 {Tags:["switch.effect_block","switch.kart_racer.no_steering_block"]}
summon marker 37061 114 36974 {Tags:["switch.effect_block","switch.kart_racer.engine_off_block"]}
summon marker 37057 114 36974 {Tags:["switch.effect_block","switch.kart_racer.engine_off_block"]}
summon marker 37085 127 37024 {Tags:["switch.effect_block","switch.kart_racer.reactor_boost_block"]}
summon marker 37001 131 37030 {Tags:["switch.effect_block","switch.kart_racer.reset_block"]}
summon marker 36957 122 37030 {Tags:["switch.effect_block","switch.kart_racer.cruise_control_block"]}
summon marker 36998 139 37053 {Tags:["switch.effect_block","switch.kart_racer.reactor_boost_block"]}

#summon marker 25047 115 25011 {Tags:["switch.effect_block","switch.kart_racer.no_grip_block"]}

forceload add 37104 36995
forceload add 37108 36995
forceload add 37104 36932
forceload add 37108 36932
forceload add 37059 36939
forceload add 37059 36942
forceload add 37061 36974
forceload add 37057 36974
forceload add 37085 37030
forceload add 37001 37030
forceload add 36957 37030
forceload add 36998 37053

