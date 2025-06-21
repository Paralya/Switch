
#> switch:shop/trigger
#
# @within	switch:player/trigger/main
#

# Global shop trigger
scoreboard players set #success switch.data 0
execute if score @s switch.trigger.shop matches 1..99 run function switch:shop/global

# Minigames shops

execute if score @s switch.trigger.shop matches 100..199 run function switch:shop/pitchout
execute if score @s switch.trigger.shop matches 10100..10199 run function switch:shop/pitchout
execute if score @s switch.trigger.shop matches 200..299 run function switch:shop/infected
execute if score @s switch.trigger.shop matches 10200..10299 run function switch:shop/infected
execute if score @s switch.trigger.shop matches 300..399 run function switch:shop/spleef
execute if score @s switch.trigger.shop matches 10300..10399 run function switch:shop/spleef
execute if score @s switch.trigger.shop matches 400..499 run function switch:shop/sheepwars
execute if score @s switch.trigger.shop matches 10400..10499 run function switch:shop/sheepwars
execute if score @s switch.trigger.shop matches 500..599 run function switch:shop/spectres_game
execute if score @s switch.trigger.shop matches 10500..10599 run function switch:shop/spectres_game

# Tutorial thing
execute if score @s switch.tutorial matches 4 if score @s switch.money matches ..99 run scoreboard players set @s switch.tutorial 5

# If the player bought something, update the stats
execute if score #success switch.data matches 1.. run function switch:stats/util_update_player

# Reset the shop trigger score to 0
scoreboard players set @s switch.trigger.shop 0

