
#> switch:modes/glassrunner/snowball/repart
#
# @executed	as @e[type=minecraft:snowball,distance=..5,tag=!switch.glassrunner.snowball]
#
# @within	switch:modes/glassrunner/snowball/use [ as @e[type=minecraft:snowball,distance=..5,tag=!switch.glassrunner.snowball] ]
#

tag @s add switch.glassrunner.snowball

execute if data entity @s Item.components."minecraft:custom_data".glassrunner.renforced_glass_bridge_red run tag @s add switch.glassrunner.renforced_glass_bridge.red
execute if data entity @s Item.components."minecraft:custom_data".glassrunner.renforced_glass_bridge_blue run tag @s add switch.glassrunner.renforced_glass_bridge.blue

execute if data entity @s Item.components."minecraft:custom_data".glassrunner.glass_bridge_red run tag @s add switch.glassrunner.glass_bridge.red
execute if data entity @s Item.components."minecraft:custom_data".glassrunner.glass_bridge_blue run tag @s add switch.glassrunner.glass_bridge.blue

execute if data entity @s Item.components."minecraft:custom_data".glassrunner.glass_bridge run tag @s add switch.glassrunner.glass_bridge

