
execute if score @s switch.glassrunner.use_snowball matches 1.. run function switch:modes/glassrunner/snowball/use

execute if predicate switch:holding_destroying_crossbow run item modify entity @s weapon.mainhand switch:charged
execute if predicate switch:holding_destroying_crossbow run effect give @s slowness 1 3 true
execute if predicate switch:holding_destroying_crossbow run effect give @s minecraft:jump_boost 1 250 true



data remove storage switch:glassrunner temp.Inventory
data modify storage switch:glassrunner temp.Inventory set from entity @s Inventory

execute unless data storage switch:glassrunner temp.Inventory[{Slot:13b}] run function switch:modes/glassrunner/shop/turtle

execute unless data storage switch:glassrunner temp.Inventory[{Slot:19b}] run function switch:modes/glassrunner/shop/snowball

execute unless data storage switch:glassrunner temp.Inventory[{Slot:21b}] run function switch:modes/glassrunner/shop/arrow

execute unless data storage switch:glassrunner temp.Inventory[{Slot:23b}] run function switch:modes/glassrunner/shop/igloo

execute unless data storage switch:glassrunner temp.Inventory[{Slot:25b}] run function switch:modes/glassrunner/shop/apocalypse

execute unless data storage switch:glassrunner temp.Inventory[{Slot:31b}] run function switch:modes/glassrunner/shop/elytra


execute if score @s switch.glassrunner.apocalypse matches 1.. run function switch:modes/glassrunner/shop/apocalypse_player


item replace entity @s[scores={switch.glassrunner.turtle_helmet=1..}] armor.head with turtle_helmet{HideFlags:1,Enchantments:[{id:"binding_curse",lvl:1s},{id:"vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,Operation:0,UUID:[I;666000306,-1375583609,-1374286730,-274090328]}]} 1
item replace entity @s[scores={switch.glassrunner.turtle_helmet=..1}] armor.head with air

scoreboard players remove @s[scores={switch.glassrunner.turtle_helmet=1..}] switch.glassrunner.turtle_helmet 1


execute if data entity @s {OnGround:1b} if predicate switch:glassrunner/in_elytra if entity @s[team=switch.glassrunner.blue] run item replace entity @s armor.chest with leather_chestplate{display:{color:255},Unbreakable:1b,HideFlags:1,Enchantments:[{id:"binding_curse",lvl:1s},{id:"vanishing_curse",lvl:1s}]}
execute if data entity @s {OnGround:1b} if predicate switch:glassrunner/in_elytra if entity @s[team=switch.glassrunner.red] run item replace entity @s armor.chest with leather_chestplate{display:{color:16711680},Unbreakable:1b,HideFlags:1,Enchantments:[{id:"binding_curse",lvl:1s},{id:"vanishing_curse",lvl:1s}]}

execute if score @s switch.glassrunner.elytra matches 2 run item replace entity @s armor.chest with elytra{Unbreakable:1b}
scoreboard players remove @s[scores={switch.glassrunner.elytra=1..}] switch.glassrunner.elytra 1
 



execute if entity @s[y=0,dy=70,gamemode=adventure] run kill @s
