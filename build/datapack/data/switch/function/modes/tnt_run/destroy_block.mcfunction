
#> switch:modes/tnt_run/destroy_block
#
# @executed	as @e[tag=switch.tnt_run,scores={switch.data=8..}] & at @s
#
# @within	switch:modes/tnt_run/tick [ as @e[tag=switch.tnt_run,scores={switch.data=8..}] & at @s ]
#

# Fill to remove tnt_run blocks
scoreboard players set #count switch.data 0
execute store result score #count switch.data run fill ~-.1 ~ ~-.1 ~.1 ~-5 ~.1 air replace #realistic_explosion:equal_and_below_1200
execute if score #count switch.data matches 0 run fill ~-.3 ~ ~-.3 ~.3 ~-5 ~.3 air replace #realistic_explosion:equal_and_below_1200

# Kill marker
kill @s

