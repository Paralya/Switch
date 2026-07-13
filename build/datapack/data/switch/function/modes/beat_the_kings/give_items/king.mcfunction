
#> switch:modes/beat_the_kings/give_items/king
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/beat_the_kings/give_items
#

item replace entity @s[team=switch.temp.king] armor.head with golden_helmet[enchantments={protection:3,unbreaking:10}]
item replace entity @s[team=switch.temp.king] hotbar.0 with water_bucket
item replace entity @s[team=switch.temp.king] hotbar.1 with golden_sword[enchantments={unbreaking:3,sharpness:3}]
item replace entity @s[team=switch.temp.king] hotbar.3 with bow[enchantments={flame:1,punch:1}]
item replace entity @s[team=switch.temp.king] hotbar.8 with oak_planks 64
item replace entity @s[team=switch.temp.king] inventory.0 with arrow 45
execute if entity @s[team=switch.temp.king] run function switch:modes/beat_the_kings/give_king_gaps with storage switch:temp king_gaps
effect give @s[team=switch.temp.king] resistance infinite 3 true
effect give @s[team=switch.temp.king] speed infinite 0 true
effect give @s[team=switch.temp.king] health_boost infinite 1 true

