
#> switch:modes/coin_chaser/give_items
#
# @within	switch:modes/coin_chaser/respawn
#			switch:modes/coin_chaser/start
#


clear @s
loot replace entity @s hotbar.0 loot grappling_hook:v1.3.0/items/normal_grappling_hook
loot replace entity @s weapon.offhand loot grappling_hook:v1.3.0/items/normal_grappling_hook
item modify entity @s hotbar.0 switch:unbreakable
item modify entity @s weapon.offhand switch:unbreakable
item replace entity @s hotbar.8 with warped_fungus_on_a_stick[unbreakable={},item_name='{"text":"Débloqueur","color":"aqua","italic":false}',item_model="switch:travel_staff"]
item replace entity @s armor.chest with elytra[unbreakable={}]

