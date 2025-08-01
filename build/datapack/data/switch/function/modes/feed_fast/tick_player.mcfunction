
#> switch:modes/feed_fast/tick_player
#
# @executed	as @a[tag=!detached,gamemode=!spectator]
#
# @within	switch:modes/feed_fast/tick [ as @a[tag=!detached,gamemode=!spectator] ]
#

# Si son niveau de Food est supérieur à son ancien, ajouter la différence
scoreboard players set #foodLevel switch.data 0
execute store result score #foodLevel switch.data run data get entity @s foodLevel
scoreboard players operation #foodLevel switch.data -= @s switch.temp.previous_food
execute if score #foodLevel switch.data matches 1.. run scoreboard players operation @s switch.temp.points += #foodLevel switch.data

# Modifier son ancien niveau de Food
execute store result score @s switch.temp.previous_food run data get entity @s foodLevel

# Advancement
execute unless score #test_mode switch.data matches 1 if score @s switch.temp.points matches 50.. run advancement grant @s only switch:visible/8

