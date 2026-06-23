
#> switch:modes/rush_the_point/classes/aviateur
#
# @executed	as the player & at current position
#
# @within	switch:modes/rush_the_point/classes/main
#

function switch:modes/rush_the_point/classes/_common

item replace entity @s armor.chest with elytra[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]}]

item replace entity @s[team=switch.rush_the_point.blue] armor.head with leather_helmet[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=546752,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.blue] armor.legs with leather_leggings[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=546752,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.blue] armor.feet with leather_boots[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=546752,enchantments={"protection":4}]

item replace entity @s[team=switch.rush_the_point.red] armor.head with leather_helmet[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=13369344,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.red] armor.legs with leather_leggings[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=13369344,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.red] armor.feet with leather_boots[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=13369344,enchantments={"protection":4}]

scoreboard players set @s switch.temp.elytra_cooldown 120
function switch:modes/rush_the_point/classes/_kit_swordsman

