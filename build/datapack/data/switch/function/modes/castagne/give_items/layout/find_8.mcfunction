
#> switch:modes/castagne/give_items/layout/find_8
#
# @executed	as @a[tag=!detached]
#
# @within	switch:modes/castagne/give_items/layout/apply
#			switch:modes/castagne/give_items/layout/learn
#

execute if score #f5 switch.data matches 0 if items entity @s hotbar.5 fishing_rod run return 6
execute if score #f0 switch.data matches 0 if items entity @s hotbar.0 fishing_rod run return 1
execute if score #f1 switch.data matches 0 if items entity @s hotbar.1 fishing_rod run return 2
execute if score #f2 switch.data matches 0 if items entity @s hotbar.2 fishing_rod run return 3
execute if score #f3 switch.data matches 0 if items entity @s hotbar.3 fishing_rod run return 4
execute if score #f4 switch.data matches 0 if items entity @s hotbar.4 fishing_rod run return 5
execute if score #f6 switch.data matches 0 if items entity @s hotbar.6 fishing_rod run return 7
execute if score #f7 switch.data matches 0 if items entity @s hotbar.7 fishing_rod run return 8
execute if score #f8 switch.data matches 0 if items entity @s hotbar.8 fishing_rod run return 9
execute if score #f9 switch.data matches 0 if items entity @s weapon.offhand fishing_rod run return 10
return 0

