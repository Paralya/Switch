
tag @s add switch.temp

# Role selection (1/3 spectres)
scoreboard players add #next_player_id switch.data 1
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.spectre @s
execute if score #next_role switch.data matches 2.. run team join switch.temp.visible @s
execute if score #next_role switch.data matches 3.. run scoreboard players set #next_role switch.data 0

# Si partie spectror game
execute if score #SPECTROR_GAME switch.data matches 1 run team join switch.temp.spectre @r[team=switch.temp.visible]
execute if score #SPECTROR_GAME switch.data matches 1 run scoreboard players set @r[team=switch.temp.spectre] switch.temp.spectror 1


# Linked marker for offline players
setblock 0 0 0 yellow_shulker_box
loot insert 0 0 0 loot switch:get_username
summon marker 0 0 0 {Tags:["switch.temp.player","switch.new"]}
scoreboard players operation #player_id switch.id = @s switch.id
execute as @e[tag=switch.new] run function switch:modes/spectres_game/roles/marker
setblock 0 0 0 air

tag @s remove switch.temp

