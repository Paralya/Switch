
#> switch:modes/beat_the_kings/give_items/king
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/beat_the_kings/give_items
#

function switch:player/layout/deactivate
item replace entity @s armor.head with golden_helmet[enchantments={protection:3,unbreaking:10}]
item replace entity @s hotbar.0 with water_bucket
item replace entity @s hotbar.1 with golden_sword[enchantments={unbreaking:3,sharpness:3}]
item replace entity @s hotbar.3 with bow[enchantments={flame:1,punch:1}]
item replace entity @s hotbar.7 with golden_apple 8
item modify entity @s hotbar.7 {type:"minecraft:set_count",count:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"#king_gaps"},score:"switch.data"}}
item replace entity @s hotbar.8 with oak_planks 64
item replace entity @s inventory.0 with arrow 45
effect give @s resistance infinite 3 true
effect give @s speed infinite 0 true
effect give @s health_boost infinite 1 true

# Layout learned for this kit
scoreboard players set @s switch.layout.kit 4
execute if score @s switch.layout.86c2d5b1 matches 0.. run function switch:modes/beat_the_kings/give_items/king/layout/apply
tag @s add switch.layout.active

