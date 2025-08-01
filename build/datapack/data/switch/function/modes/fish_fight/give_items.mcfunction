
#> switch:modes/fish_fight/give_items
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/fish_fight/second [ as @a[tag=!detached] & at @s ]
#			switch:modes/fish_fight/teams_tp/tp_give
#

# replace tropical fish knockback 1 rename "Fishy Fish" 
execute unless data entity @s Inventory[{id:"minecraft:tropical_fish"}] run give @s tropical_fish[enchantments={"minecraft:knockback":2,"minecraft:sharpness":2},item_name={"text":"Fishy Fish","color":"aqua"}] 42
execute if score #TEAM_FISH switch.data matches 0 run give @s white_concrete 6
execute if score #TEAM_FISH switch.data matches 1 run give @s[team=switch.temp.blue] blue_concrete 6 
execute if score #TEAM_FISH switch.data matches 1 run give @s[team=switch.temp.red] red_concrete 6 
item replace entity @s hotbar.8 with ender_pearl 6
give @s shears 1

effect give @s instant_health 4 5 true

