
#> switch:modes/pvpswap/give_items/layout/stayed_7
#
# @within	string in switch:modes/pvpswap/give_items/layout/learn
#

execute if score #m7 switch.data matches 1 if items entity @s hotbar.0 golden_apple run return run scoreboard players set #f0 switch.data 1
execute if score #m7 switch.data matches 2 if items entity @s hotbar.1 golden_apple run return run scoreboard players set #f1 switch.data 1
execute if score #m7 switch.data matches 3 if items entity @s hotbar.2 golden_apple run return run scoreboard players set #f2 switch.data 1
execute if score #m7 switch.data matches 4 if items entity @s hotbar.3 golden_apple run return run scoreboard players set #f3 switch.data 1
execute if score #m7 switch.data matches 5 if items entity @s hotbar.4 golden_apple run return run scoreboard players set #f4 switch.data 1
execute if score #m7 switch.data matches 6 if items entity @s hotbar.5 golden_apple run return run scoreboard players set #f5 switch.data 1
execute if score #m7 switch.data matches 7 if items entity @s hotbar.6 golden_apple run return run scoreboard players set #f6 switch.data 1
execute if score #m7 switch.data matches 8 if items entity @s hotbar.7 golden_apple run return run scoreboard players set #f7 switch.data 1
execute if score #m7 switch.data matches 9 if items entity @s hotbar.8 golden_apple run return run scoreboard players set #f8 switch.data 1
execute if score #m7 switch.data matches 10 if items entity @s weapon.offhand golden_apple run return run scoreboard players set #f9 switch.data 1
return 0

