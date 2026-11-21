
#> switch:modes/bombardement/record_runner_up
#
# @executed	at @s
#
# @within	switch:modes/bombardement/death
#

execute unless score #bombardement_ticks switch.data = #bombardement_last_death switch.data run data modify storage switch:temp bombardement_wave set value []
scoreboard players operation #bombardement_last_death switch.data = #bombardement_ticks switch.data
loot replace entity @s hotbar.0 loot switch:get_username
data modify storage switch:temp bombardement_wave append from entity @s Inventory[0].components."minecraft:profile".name

