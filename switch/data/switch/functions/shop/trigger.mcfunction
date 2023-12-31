
# Global shop trigger
scoreboard players set #success switch.data 0
execute if score @s switch.trigger.shop matches 1..99 run function switch:shop/global

# Minigames shops
execute if score @s switch.trigger.shop matches 100..199 run function switch:shop/pitchout
execute if score @s switch.trigger.shop matches 200..299 run function switch:shop/infected
execute if score @s switch.trigger.shop matches 300..399 run function switch:shop/spleef
execute if score @s switch.trigger.shop matches 400..499 run function switch:shop/sheepwars

# Tutorial thing
execute if score @s switch.tutorial matches 4 if score @s switch.money matches ..99 run scoreboard players set @s switch.tutorial 5

# If the player bought something, update the stats
execute if score #success switch.data matches 1.. run function switch:stats/util_update_player

# Reset the shop trigger score to 0
scoreboard players set @s switch.trigger.shop 0

