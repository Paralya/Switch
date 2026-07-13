
#> switch:modes/capture_the_flag/classes/demolisher/items
#
# @executed	as the player & at current position
#
# @within	switch:modes/capture_the_flag/classes/demolisher with storage switch:layout out
#
# @args		s0 (unknown)
#			s1 (unknown)
#			s2 (unknown)
#			s3 (unknown)
#			s4 (unknown)
#			s5 (unknown)
#			s6 (unknown)
#			s7 (unknown)
#

$item replace entity @s $(s0) with iron_sword
$item replace entity @s $(s1) with stone_axe[attribute_modifiers=[{type:"minecraft:attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:4,operation:"add_value"}]]
$item replace entity @s $(s2) with potion[potion_contents="minecraft:strong_healing"]
$item replace entity @s $(s3) with potion[item_name={"text":"Suicide Potion","color":"dark_purple"},potion_contents={custom_color:4391004,custom_effects:[{id:"instant_damage",amplifier:1b,duration:20},{id:"wither",amplifier:10b,duration:-1},{id:"poison",amplifier:10b,duration:-1}]}]
$item replace entity @s[team=switch.temp.red] $(s4) with red_wool 8
$item replace entity @s[team=switch.temp.blue] $(s4) with blue_wool 8
$item replace entity @s $(s5) with flint_and_steel
$item replace entity @s $(s6) with tnt 2
$item replace entity @s $(s7) with bread 21

