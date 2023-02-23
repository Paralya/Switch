
execute if score @s switch.glassrunner.money matches ..2 if data entity @s SelectedItem.tag{Charged:1b} run function switch:modes/glassrunner/destroying_crossbow/not_use

execute if score @s switch.glassrunner.money matches 3.. if data entity @s SelectedItem.tag{Charged:1b} run function switch:modes/glassrunner/destroying_crossbow/buy


#execute if score @s switch.glassrunner.money matches 3.. run item modify 