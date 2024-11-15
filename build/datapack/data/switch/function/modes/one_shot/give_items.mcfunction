
#> switch:modes/one_shot/give_items
#
# @within	switch:modes/one_shot/joined
#			switch:modes/one_shot/second
#

# Give items to the player
give @s bow[unbreakable={},enchantments={levels:{infinity:1,power:123},show_in_tooltip:0b},item_name='{"text":"Boowie","italic":true,"color":"light_purple"}']
give @s netherite_sword[enchantments={sharpness:123},item_name='{"text":"Swordy Sword","italic":true,"color":"green"}']
give @s arrow 1
attribute @s attack_speed base set 1024
attribute @s max_health base set 1

