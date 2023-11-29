
# Global shop trigger
execute if score @s switch.trigger.shop matches 1..99 run function switch:shop/global

# Minigames shops
execute if score @s switch.trigger.shop matches 100..199 run function switch:shop/pitchout
execute if score @s switch.trigger.shop matches 200..299 run function switch:shop/infected
execute if score @s switch.trigger.shop matches 300..399 run function switch:shop/spleef
execute if score @s switch.trigger.shop matches 400..499 run function switch:shop/sheepwars

# Tutorial thing
execute if score @s switch.tutorial matches 4 if score @s switch.money matches ..99 run scoreboard players set @s switch.tutorial 5

# Reset the shop trigger score to 0
scoreboard players set @s switch.trigger.shop 0

