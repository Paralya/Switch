
#> switch:modes/castagne/give_items
#
# @within	switch:modes/castagne/start
#

item replace entity @s armor.head with leather_helmet[enchantments={projectile_protection:2}]
item replace entity @s armor.chest with leather_chestplate[enchantments={projectile_protection:2}]
item replace entity @s armor.legs with leather_leggings[enchantments={projectile_protection:2}]
item replace entity @s armor.feet with leather_boots[enchantments={projectile_protection:2}]
item replace entity @s hotbar.0 with wooden_sword[enchantments={sharpness:1,knockback:1}]
item replace entity @s hotbar.1 with bow
item replace entity @s hotbar.2 with water_bucket
item replace entity @s hotbar.3 with iron_pickaxe[enchantments={efficiency:1}]
item replace entity @s hotbar.4 with iron_axe[enchantments={efficiency:1},attribute_modifiers=[{type:"minecraft:attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:2,operation:"add_value"}]]
item replace entity @s hotbar.6 with arrow 8
item replace entity @s hotbar.7 with oak_planks 64
item replace entity @s hotbar.8 with golden_apple 12
item replace entity @s inventory.25 with tnt 4
item replace entity @s inventory.26 with flint_and_steel

scoreboard players add #initial_count switch.data 1
data modify storage switch:temp temp set value {id:0,hurt:[]}
execute store result storage switch:temp temp.id int 1 run scoreboard players get @s switch.id
data modify storage switch:temp castagne append from storage switch:temp temp
data remove storage switch:temp temp

