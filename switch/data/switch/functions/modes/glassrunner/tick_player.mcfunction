
execute if score @s switch.glassrunner.use_snowball matches 1.. run function switch:modes/glassrunner/snowball/use

execute if predicate switch:holding_destroying_crossbow run item modify entity @s weapon.mainhand switch:charged



execute if score #glassrunner.apocalypse switch.data matches 1.. run function switch:modes/glassrunner/apocalypse_player

