
#> switch:modes/spectres_game/give_items/visible/items
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/spectres_game/give_items/visible with storage switch:layout out
#
# @args		s0 (unknown)
#			s1 (unknown)
#			s2 (unknown)
#			s3 (unknown)
#			s4 (unknown)
#			s5 (unknown)
#			s6 (unknown)
#

$item replace entity @s[team=switch.temp.visible] $(s0) with stone_sword[enchantments={sharpness:1}]
$item replace entity @s[team=switch.temp.visible] $(s1) with bow
$item replace entity @s[team=switch.temp.visible] $(s2) with stone_axe[attribute_modifiers=[{type:"minecraft:attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:4,operation:"add_value"}]]
$item replace entity @s[team=switch.temp.visible] $(s3) with oak_planks 64
$item replace entity @s[team=switch.temp.visible] $(s4) with water_bucket
$item replace entity @s[team=switch.temp.visible] $(s5) with golden_apple 5
$execute if score #TASKS_GAME switch.data matches 1 run loot replace entity @s[team=switch.temp.visible] $(s6) loot switch:i/emerald_pickaxe
$execute if score #TASKS_GAME switch.data matches 1 run item modify entity @s[team=switch.temp.visible] $(s6) {"function":"minecraft:set_components","components":{"minecraft:max_damage":10}}

