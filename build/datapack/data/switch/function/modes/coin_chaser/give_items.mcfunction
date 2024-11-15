
#> switch:modes/coin_chaser/give_items
#
# @within	switch:modes/coin_chaser/respawn
#			switch:modes/coin_chaser/start
#


clear @s
loot replace entity @s hotbar.0 loot grappling_hook:v1.2.1/items/normal_grappling_hook
loot replace entity @s weapon.offhand loot grappling_hook:v1.2.1/items/normal_grappling_hook
item replace entity @s hotbar.8 with warped_fungus_on_a_stick[unbreakable={},item_name='{"text":"Débloqueur","color":"aqua","italic":false}',item_model="switch:travel_staff"]
item replace entity @s armor.chest with elytra[unbreakable={}]

