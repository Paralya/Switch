
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #build_battle_seconds switch.data 1

# XP Bar
execute if score #build_battle_state switch.data matches 0 run function switch:modes/build_battle/xp_bar

# Change every ground blocks to grass_block
execute if score #build_battle_state switch.data matches 0 at @e[tag=switch.build_battle_marker] run setblock ~3 ~-2 ~3 air
execute if score #build_battle_state switch.data matches 0 at @e[tag=switch.build_battle_marker] run setblock ~3 ~2 ~3 grass_block

# Start the building time when the voting time is over
execute if score #build_battle_state switch.data matches 0 if score #build_battle_seconds switch.data matches 0.. run function switch:modes/build_battle/building_time/start

# Prevent people from leaving area
execute if score #build_battle_state switch.data matches ..1 as @a[gamemode=!spectator,scores={switch.temp.id=0..}] run function switch:modes/build_battle/prevent_leaving_area

