
#> switch:modes/spleef/give_items/layout/stayed_3
#
# @within	string in switch:modes/spleef/give_items/layout/learn
#

execute if score #m3 switch.data matches 1 if items entity @s hotbar.0 white_shulker_box run return run scoreboard players set #f0 switch.data 1
execute if score #m3 switch.data matches 2 if items entity @s hotbar.1 white_shulker_box run return run scoreboard players set #f1 switch.data 1
execute if score #m3 switch.data matches 3 if items entity @s hotbar.2 white_shulker_box run return run scoreboard players set #f2 switch.data 1
execute if score #m3 switch.data matches 4 if items entity @s hotbar.3 white_shulker_box run return run scoreboard players set #f3 switch.data 1
execute if score #m3 switch.data matches 5 if items entity @s hotbar.4 white_shulker_box run return run scoreboard players set #f4 switch.data 1
execute if score #m3 switch.data matches 6 if items entity @s hotbar.5 white_shulker_box run return run scoreboard players set #f5 switch.data 1
execute if score #m3 switch.data matches 7 if items entity @s hotbar.6 white_shulker_box run return run scoreboard players set #f6 switch.data 1
execute if score #m3 switch.data matches 8 if items entity @s hotbar.7 white_shulker_box run return run scoreboard players set #f7 switch.data 1
execute if score #m3 switch.data matches 9 if items entity @s hotbar.8 white_shulker_box run return run scoreboard players set #f8 switch.data 1
execute if score #m3 switch.data matches 10 if items entity @s weapon.offhand white_shulker_box run return run scoreboard players set #f9 switch.data 1
return 0

