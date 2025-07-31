
#> switch:modes/traitors_game/roles/main
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/traitors_game/start [ as @a[tag=!detached,sort=random] & at @s ]
#

tag @s add switch.temp
tag @s remove switch.solitaire
tag @s remove switch.floupy

# Role selection (1 = inspecteur, 2 = innocent, 3 & 4 = ninja, 5 = traitor, 6 = big traitor)
scoreboard players add #next_player_id switch.data 1
scoreboard players add #next_role switch.data 1
# Inspecteur
execute if score #next_role switch.data matches 1 run team join switch.temp.inspector @s
execute if score #next_role switch.data matches 1 run scoreboard players set @s switch.temp.role 1
execute if score #next_role switch.data matches 1 run attribute @s max_health base set 16
# Traitre
execute if score #next_role switch.data matches 2 run scoreboard players set @s switch.temp.role 5
# Ninja
execute if score #next_role switch.data matches 3 run scoreboard players set @s switch.temp.role 3
execute if score #next_role switch.data matches 3 run attribute @s movement_speed base set 0.115
# Traitre
execute if score #next_role switch.data matches 4 run scoreboard players set @s switch.temp.role 5
# Innocents (but first is Floupy if scenario)
execute if score #next_role switch.data matches 5..6 run scoreboard players set @s switch.temp.role 2
execute if score #next_role switch.data matches 5 if score #sc_floupy switch.data matches 1 run scoreboard players set @s switch.temp.role 7
execute if score #next_role switch.data matches 5 if score #sc_floupy switch.data matches 1 run tag @s add switch.floupy
# Gros Traitre
execute if score #next_role switch.data matches 7 run scoreboard players set @s switch.temp.role 6
execute if score #next_role switch.data matches 7 run attribute @s max_health base set 30
# Innocents
execute if score #next_role switch.data matches 8..9 run scoreboard players set @s switch.temp.role 2
# Traitre
execute if score #next_role switch.data matches 10 run scoreboard players set @s switch.temp.role 5
# Innocent
execute if score #next_role switch.data matches 11 run scoreboard players set @s switch.temp.role 2
# Traitre
execute if score #next_role switch.data matches 12 run scoreboard players set @s switch.temp.role 5
# Innocent
execute if score #next_role switch.data matches 13 run scoreboard players set @s switch.temp.role 2
# Traitre
execute if score #next_role switch.data matches 14 run scoreboard players set @s switch.temp.role 5

# Reroll at 7
execute if score #next_role switch.data matches 14 run scoreboard players set #next_role switch.data 7

## Linked marker for offline players
setblock 0 11 0 yellow_shulker_box
loot insert 0 11 0 loot switch:get_username
summon marker 0 11 0 {Tags:["switch.temp.player","switch.new"]}
scoreboard players operation #player_id switch.id = @s switch.id
execute as @e[tag=switch.new] run function switch:modes/traitors_game/roles/marker
setblock 0 11 0 air

tag @s remove switch.temp

