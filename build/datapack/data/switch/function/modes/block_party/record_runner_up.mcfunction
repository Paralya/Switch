
#> switch:modes/block_party/record_runner_up
#
# @executed	as @a[tag=!detached,gamemode=!spectator,sort=random] & at @s
#
# @within	switch:modes/block_party/death
#

loot replace entity @s hotbar.0 loot switch:get_username
data modify storage switch:temp block_party_wave append from entity @s Inventory[0].components."minecraft:profile".name
clear @s

