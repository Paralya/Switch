
tag @s add switch.temp

# Role selection (1 = inspecteur, 2 = innocent, 3 & 4 = ninja, 5 = traitor, 6 = big traitor)
scoreboard players add #next_player_id switch.data 1
scoreboard players add #next_role switch.data 1
# Inspecteur
execute if score #next_role switch.data matches 1 run team join switch.temp.visible @s
execute if score #next_role switch.data matches 1 run scoreboard players set @s switch.temp.role 1
execute if score #next_role switch.data matches 1 run attribute @s generic.max_health modifier add 1-1-1-1-2 "Inspecteur" -0.2 multiply_base
# Traitre
execute if score #next_role switch.data matches 2 run scoreboard players set @s switch.temp.role 5
# Ninja
execute if score #next_role switch.data matches 3 run scoreboard players set @s switch.temp.role 3
execute if score #next_role switch.data matches 3 run attribute @s generic.movement_speed modifier add 1-1-1-1-1 "Ninja" 0.15 multiply_base
# Traitre
execute if score #next_role switch.data matches 4 run scoreboard players set @s switch.temp.role 5
# Innocents
execute if score #next_role switch.data matches 5..6 run scoreboard players set @s switch.temp.role 2
# Gros Traitre
execute if score #next_role switch.data matches 7 run scoreboard players set @s switch.temp.role 6
execute if score #next_role switch.data matches 7 run attribute @s generic.max_health modifier add 1-1-1-1-2 "Gros Traitre" 0.5 multiply_base
# Innocents
execute if score #next_role switch.data matches 8..9 run scoreboard players set @s switch.temp.role 2
# Traitre
execute if score #next_role switch.data matches 10 run scoreboard players set @s switch.temp.role 5

# Reroll at 7
execute if score #next_role switch.data matches 10 run scoreboard players set #next_role switch.data 7


# Linked marker for offline players
setblock 0 0 0 yellow_shulker_box
loot insert 0 0 0 loot switch:get_username
summon marker 0 0 0 {Tags:["switch.temp.player","switch.new"]}
execute as @e[tag=switch.new] run function switch:modes/traitors_game/roles/marker
scoreboard players operation @s switch.temp.id = #next_player_id switch.data
setblock 0 0 0 air

tag @s remove switch.temp

