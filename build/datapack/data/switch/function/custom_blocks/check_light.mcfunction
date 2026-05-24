
#> switch:custom_blocks/check_light
#
# @executed	positioned ~ ~1 ~
#
# @within	switch:custom_blocks/compute_brightness [ positioned ~ ~1 ~ ]
#			switch:custom_blocks/compute_brightness [ positioned ~ ~-1 ~ ]
#			switch:custom_blocks/compute_brightness [ positioned ~1 ~ ~ ]
#			switch:custom_blocks/compute_brightness [ positioned ~-1 ~ ~ ]
#			switch:custom_blocks/compute_brightness [ positioned ~ ~ ~1 ]
#			switch:custom_blocks/compute_brightness [ positioned ~ ~ ~-1 ]
#

# Check light level at current position and update #light if higher
execute if score #light switch.data matches ..0 if predicate switch:light/1 run return run scoreboard players set #light switch.data 1
execute if score #light switch.data matches ..1 if predicate switch:light/2 run return run scoreboard players set #light switch.data 2
execute if score #light switch.data matches ..2 if predicate switch:light/3 run return run scoreboard players set #light switch.data 3
execute if score #light switch.data matches ..3 if predicate switch:light/4 run return run scoreboard players set #light switch.data 4
execute if score #light switch.data matches ..4 if predicate switch:light/5 run return run scoreboard players set #light switch.data 5
execute if score #light switch.data matches ..5 if predicate switch:light/6 run return run scoreboard players set #light switch.data 6
execute if score #light switch.data matches ..6 if predicate switch:light/7 run return run scoreboard players set #light switch.data 7
execute if score #light switch.data matches ..7 if predicate switch:light/8 run return run scoreboard players set #light switch.data 8
execute if score #light switch.data matches ..8 if predicate switch:light/9 run return run scoreboard players set #light switch.data 9
execute if score #light switch.data matches ..9 if predicate switch:light/10 run return run scoreboard players set #light switch.data 10
execute if score #light switch.data matches ..10 if predicate switch:light/11 run return run scoreboard players set #light switch.data 11
execute if score #light switch.data matches ..11 if predicate switch:light/12 run return run scoreboard players set #light switch.data 12
execute if score #light switch.data matches ..12 if predicate switch:light/13 run return run scoreboard players set #light switch.data 13
execute if score #light switch.data matches ..13 if predicate switch:light/14 run return run scoreboard players set #light switch.data 14
execute if score #light switch.data matches ..14 if predicate switch:light/15 run return run scoreboard players set #light switch.data 15

