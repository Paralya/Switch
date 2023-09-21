
# Si son niveau de Food est supérieur à son ancien, ajouter la différence
scoreboard players set #foodLevel switch.data 0
execute store result score #foodLevel switch.data run data get entity @s foodLevel
scoreboard players operation #foodLevel switch.data -= @s switch.temp.previous_food
execute if score #foodLevel switch.data matches 1.. run scoreboard players operation @s switch.temp.points += #foodLevel switch.data

# Modifier son ancien niveau de Food
execute store result score @s switch.temp.previous_food run data get entity @s foodLevel

