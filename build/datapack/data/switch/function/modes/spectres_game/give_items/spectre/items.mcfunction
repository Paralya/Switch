
#> switch:modes/spectres_game/give_items/spectre/items
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/spectres_game/give_items/spectre with storage switch:layout out
#
# @args		s0 (unknown)
#			s1 (unknown)
#			s2 (unknown)
#			s3 (unknown)
#			s4 (unknown)
#			s5 (unknown)
#

$item replace entity @s[team=switch.temp.spectre] $(s0) with water_bucket
$item replace entity @s[team=switch.temp.spectre] $(s1) with stone_sword[enchantments={unbreaking:3,sharpness:3,fire_aspect:1}]
$item replace entity @s[team=switch.temp.spectre] $(s2) with bow[enchantments={punch:1}]
$item replace entity @s[team=switch.temp.spectre] $(s3) with golden_apple 8
$item replace entity @s[team=switch.temp.spectre] $(s4) with oak_planks 64
$execute if score #TASKS_GAME switch.data matches 1 run loot replace entity @s[team=switch.temp.spectre] $(s5) loot switch:i/emerald_pickaxe
$execute if score #TASKS_GAME switch.data matches 1 run item modify entity @s[team=switch.temp.spectre] $(s5) {"function":"minecraft:set_components","components":{"minecraft:max_damage":10}}

