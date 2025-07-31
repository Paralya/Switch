
#> switch:modes/glassrunner/death/both
#
# @executed	positioned 3000 128 3000
#
# @within	switch:modes/glassrunner/death/death
#

scoreboard players add @s switch.glassrunner.turtle_helmet 50

execute unless data entity @s Inventory[{components:{"minecraft:custom_data":{ctc:{id:"glassrunner:bow"}}}}] run loot give @s loot switch:glassrunner/bow
execute unless data entity @s Inventory[{components:{"minecraft:custom_data":{ctc:{id:"glassrunner:fireball_wand"}}}}] run loot give @s loot switch:glassrunner/fireball_wand
give @s arrow 4

function switch:modes/glassrunner/shop/reset_item

