
#> switch:modes/glassrunner/tick_player
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/glassrunner/tick [ as @a[tag=!detached] & at @s ]
#

execute if score @s switch.glassrunner.use_snowball matches 1.. run function switch:modes/glassrunner/snowball/use

execute if predicate switch:holding_destroying_crossbow run item modify entity @s weapon.mainhand switch:charged
execute if predicate switch:holding_destroying_crossbow run effect give @s slowness 1 3 true


data remove storage switch:glassrunner temp.Inventory
data modify storage switch:glassrunner temp.Inventory set from entity @s Inventory

execute unless data storage switch:glassrunner temp.Inventory[{Slot:13b}] run function switch:modes/glassrunner/shop/turtle

execute unless data storage switch:glassrunner temp.Inventory[{Slot:19b}] run function switch:modes/glassrunner/shop/snowball

execute unless data storage switch:glassrunner temp.Inventory[{Slot:21b}] run function switch:modes/glassrunner/shop/arrow

execute unless data storage switch:glassrunner temp.Inventory[{Slot:23b}] run function switch:modes/glassrunner/shop/igloo

execute unless data storage switch:glassrunner temp.Inventory[{Slot:25b}] run function switch:modes/glassrunner/shop/apocalypse

execute unless data storage switch:glassrunner temp.Inventory[{Slot:31b}] run function switch:modes/glassrunner/shop/elytra

execute if score @s switch.glassrunner.apocalypse matches 1.. run function switch:modes/glassrunner/shop/apocalypse_player

item replace entity @s[scores={switch.glassrunner.turtle_helmet=1..}] armor.head with turtle_helmet[enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={"hidden_components":["minecraft:enchantments"]},attribute_modifiers=[{type:"knockback_resistance",id:"switch.knockback_resistance",amount:1,operation:"add_value"}]]
item replace entity @s[scores={switch.glassrunner.turtle_helmet=..1}] armor.head with air

scoreboard players remove @s[scores={switch.glassrunner.turtle_helmet=1..}] switch.glassrunner.turtle_helmet 1

execute if data entity @s {OnGround:true} if predicate switch:glassrunner/in_elytra if entity @s[team=switch.glassrunner.blue] run item replace entity @s armor.chest with leather_chestplate[unbreakable={},enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={"hidden_components":["minecraft:enchantments"]},dyed_color=255]
execute if data entity @s {OnGround:true} if predicate switch:glassrunner/in_elytra if entity @s[team=switch.glassrunner.red] run item replace entity @s armor.chest with leather_chestplate[unbreakable={},enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={"hidden_components":["minecraft:enchantments"]},dyed_color=16711680]

execute if score @s switch.glassrunner.elytra matches 2 run item replace entity @s armor.chest with elytra[unbreakable={}]
scoreboard players remove @s[scores={switch.glassrunner.elytra=1..}] switch.glassrunner.elytra 1
 

execute if entity @s[y=0,dy=70,gamemode=adventure] run kill @s

