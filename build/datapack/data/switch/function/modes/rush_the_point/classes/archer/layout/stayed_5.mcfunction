
#> switch:modes/rush_the_point/classes/archer/layout/stayed_5
#
# @within	string in switch:modes/rush_the_point/classes/archer/layout/learn
#

execute if score #m5 switch.data matches 1 if items entity @s hotbar.0 ender_pearl run return run scoreboard players set #f0 switch.data 1
execute if score #m5 switch.data matches 2 if items entity @s hotbar.1 ender_pearl run return run scoreboard players set #f1 switch.data 1
execute if score #m5 switch.data matches 3 if items entity @s hotbar.2 ender_pearl run return run scoreboard players set #f2 switch.data 1
execute if score #m5 switch.data matches 4 if items entity @s hotbar.3 ender_pearl run return run scoreboard players set #f3 switch.data 1
execute if score #m5 switch.data matches 5 if items entity @s hotbar.4 ender_pearl run return run scoreboard players set #f4 switch.data 1
execute if score #m5 switch.data matches 6 if items entity @s hotbar.5 ender_pearl run return run scoreboard players set #f5 switch.data 1
execute if score #m5 switch.data matches 7 if items entity @s hotbar.6 ender_pearl run return run scoreboard players set #f6 switch.data 1
execute if score #m5 switch.data matches 8 if items entity @s hotbar.7 ender_pearl run return run scoreboard players set #f7 switch.data 1
execute if score #m5 switch.data matches 9 if items entity @s hotbar.8 ender_pearl run return run scoreboard players set #f8 switch.data 1
execute if score #m5 switch.data matches 10 if items entity @s weapon.offhand ender_pearl run return run scoreboard players set #f9 switch.data 1
return 0

