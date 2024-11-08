
#> switch:modes/creeper_apocalypse/give_items
#
# @within	switch:modes/creeper_apocalypse/start
#

give @s golden_apple 5
give @s flint_and_steel
attribute @s generic.max_health base set 40.0
item replace entity @s armor.chest with diamond_chestplate
item replace entity @s armor.legs with iron_leggings
item replace entity @s armor.feet with diamond_boots
scoreboard players set @s switch.temp.ocelot 1

