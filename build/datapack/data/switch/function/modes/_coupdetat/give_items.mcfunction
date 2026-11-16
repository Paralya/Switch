
#> switch:modes/_coupdetat/give_items
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:modes/_coupdetat/start
#

function switch:player/layout/deactivate
loot replace entity @s armor.head loot switch:i/sapphire_helmet
loot replace entity @s armor.chest loot switch:i/sapphire_chestplate
loot replace entity @s hotbar.0 loot switch:i/stardust_sword
loot replace entity @s hotbar.1 loot switch:i/stardust_apple
item replace entity @s hotbar.7 with tnt 2
item replace entity @s hotbar.8 with flint_and_steel

# Layout learned for this kit
scoreboard players set @s switch.layout.kit 2
execute if score @s switch.layout.61ec066f matches 0.. run function switch:modes/_coupdetat/give_items/layout/apply
tag @s add switch.layout.active

