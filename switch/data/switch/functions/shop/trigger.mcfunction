
# Global shop trigger
execute if score @s switch.trigger.shop matches 1..99 run function switch:shop/global

# Minigames shops
execute if score @s switch.trigger.shop matches 100..199 run function switch:shop/pitchout
execute if score @s switch.trigger.shop matches 200..299 run function switch:shop/infected

# Reset the shop trigger score to 0
scoreboard players set @s switch.trigger.shop 0

