
#> switch:modes/shoot_da_sheep/on_new_sheep
#
# @executed	at @n[type=marker,tag=switch.selected_map] & positioned ~ 2048 ~
#
# @within	switch:modes/shoot_da_sheep/summon_sheep [ at @n[type=marker,tag=switch.selected_map] & positioned ~ 2048 ~ ]
#

# Add absorption to prevent killing, NoGravity, and remove loot table
attribute @s max_absorption base set 2048.0
data modify entity @s AbsorptionAmount set value 2048.0f
data modify entity @s DeathLootTable set value "empty"
data modify entity @s NoGravity set value 1b

# Choose a random color
execute store result score #color switch.data run random value 0..15
execute store result entity @s Color byte 1 run scoreboard players get #color switch.data
execute if score #color switch.data matches 0 run data modify entity @s CustomName set value {"text":"+1 point","color":"gray"}
execute if score #color switch.data matches 1 run data modify entity @s CustomName set value {"text":"+1 point","color":"gray"}
execute if score #color switch.data matches 2 run data modify entity @s CustomName set value {"text":"+1 point","color":"gray"}
execute if score #color switch.data matches 3 run data modify entity @s CustomName set value {"text":"+1 point","color":"gray"}
execute if score #color switch.data matches 4 run data modify entity @s CustomName set value {"text":"+2 points","color":"aqua"}
execute if score #color switch.data matches 5 run data modify entity @s CustomName set value {"text":"+2 points","color":"aqua"}
execute if score #color switch.data matches 6 run data modify entity @s CustomName set value {"text":"+3 points","color":"aqua"}
execute if score #color switch.data matches 7 run data modify entity @s CustomName set value {"text":"+3 points","color":"aqua"}
execute if score #color switch.data matches 8 run data modify entity @s CustomName set value {"text":"+4 points","color":"yellow"}
execute if score #color switch.data matches 9 run data modify entity @s CustomName set value {"text":"+4 points","color":"yellow"}
execute if score #color switch.data matches 10 run data modify entity @s CustomName set value {"text":"+6 points","color":"yellow"}
execute if score #color switch.data matches 11 run data modify entity @s CustomName set value {"text":"+6 points","color":"yellow"}
execute if score #color switch.data matches 12 run data modify entity @s CustomName set value {"text":"+8 points","color":"gold"}
execute if score #color switch.data matches 13 run data modify entity @s CustomName set value {"text":"+8 points","color":"gold"}
execute if score #color switch.data matches 14 run data modify entity @s CustomName set value {"text":"+10 points","color":"red"}
execute if score #color switch.data matches 15 run data modify entity @s CustomName set value {"text":"-50% points","color":"black"}
data modify entity @s CustomNameVisible set value 1b

# Spreadplayer
spreadplayers ~ ~ 10 10 false @s
execute at @s run tp @s ~ ~-5 ~

