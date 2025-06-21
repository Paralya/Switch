
#> switch:modes/spectres_game/start
#
# @within	switch:modes/spectres_game/calls/start
#

gamemode survival @a[tag=!detached]
scoreboard players set @a[tag=!detached] switch.alive 1
function switch:utils/set_dynamic_time

# Get new players and players count
scoreboard players add @a[tag=!detached] switch.stats.played.spectres_game 0
execute store result score #count switch.data if entity @a[tag=!detached]
execute store result score #new_players switch.data if entity @a[tag=!detached,scores={switch.stats.played.spectres_game=0}]

## Partie spectror game aléatoire
scoreboard objectives add switch.temp.spectror dummy
scoreboard players set #SPECTROR_GAME switch.data 0
execute unless score #new_players switch.data matches 2.. if score #count switch.data matches 10.. if predicate switch:chance/0.33 run scoreboard players set #SPECTROR_GAME switch.data 1
#mettre le score à 1

## Partie TASKS GAME aléatoire
scoreboard objectives add switch.temp.break_obsidian minecraft.mined:minecraft.crying_obsidian
scoreboard players set #TASKS_GAME switch.data 0
execute unless score #new_players switch.data matches 2.. if score #count switch.data matches 10.. if predicate switch:chance/0.33 run scoreboard players set #TASKS_GAME switch.data 1
#mettre le score à 1



## Placement de la map et des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {id:"spectres_game", maps:["spectre_original","mushroom_plains","sky_island_tower","wyvern_towers","jn_sakura_pvpbox","luxium_spectres_remake"]}

execute in switch:game run gamerule mobGriefing true
execute in switch:game run gamerule showDeathMessages false
execute in switch:game run gamerule naturalRegeneration false
execute in switch:game run gamerule keepInventory true

function switch:translations/modes_spectres_game_start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 901
scoreboard players set #spectres_game_seconds switch.data -1
scoreboard players set #spectres_game_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #cut_clean switch.data 1
scoreboard players set #nb_dead_spectres switch.data 0
scoreboard players set #nb_dead_visibles switch.data 0

scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.damages dummy {"text":" Coups infligés ","color":"aqua"}
scoreboard objectives add switch.temp.kills playerKillCount {"text":" Joueurs tués ","color":"red"}
scoreboard objectives setdisplay sidebar switch.temp.damages
scoreboard objectives setdisplay list switch.health

# Choix des rôles + give d'items
team add switch.temp.visible {"text":"[Visible]","color":"dark_green"}
team add switch.temp.spectre {"text":"[Spectre]","color":"yellow"}
team modify switch.temp.visible color dark_green
team modify switch.temp.spectre color yellow
scoreboard players set #next_role switch.data 0
scoreboard players set #next_player_id switch.data 0
scoreboard objectives add switch.games_not_being_spectre dummy
function switch:modes/spectres_game/percentage/select_roles
execute as @a[tag=!detached] run function switch:modes/spectres_game/roles/main

# Si partie spectror game
execute if score #SPECTROR_GAME switch.data matches 1 run scoreboard players set @r[team=switch.temp.visible] switch.temp.spectror 1
execute if score #SPECTROR_GAME switch.data matches 1 run team join switch.temp.spectre @a[scores={switch.temp.spectror=1}]
execute if score #SPECTROR_GAME switch.data matches 1 run scoreboard players set @a[scores={switch.temp.spectror=1}] switch.alive 3

# Give items
execute as @a[tag=!detached] at @s run function switch:modes/spectres_game/give_items
give @r[team=switch.temp.spectre] splash_potion[item_name={"text":"Potion dévastatrice du fantôme"},lore=[{"text":"À lancer sur les visibles","color":"white","italic":false}],potion_contents={custom_color:3080257,potion:"minecraft:water",custom_effects:[{id:"slowness",amplifier:0b,duration:400,show_particles:0b},{id:"mining_fatigue",amplifier:0b,duration:400,show_particles:0b},{id:"instant_damage",amplifier:0b,duration:20,show_particles:0b},{id:"blindness",amplifier:0b,duration:80,show_particles:0b}]}]
give @r[team=switch.temp.spectre] splash_potion[item_name={"text":"Potion dévastatrice du fantôme"},lore=[{"text":"À lancer sur les visibles","color":"white","italic":false}],potion_contents={custom_color:3080257,potion:"minecraft:water",custom_effects:[{id:"slowness",amplifier:0b,duration:400,show_particles:0b},{id:"mining_fatigue",amplifier:0b,duration:400,show_particles:0b},{id:"instant_damage",amplifier:0b,duration:20,show_particles:0b},{id:"blindness",amplifier:0b,duration:80,show_particles:0b}]}]
give @r[team=switch.temp.spectre] splash_potion[item_name={"text":"Potion dévastatrice du fantôme"},lore=[{"text":"À lancer sur les visibles","color":"white","italic":false}],potion_contents={custom_color:3080257,potion:"minecraft:water",custom_effects:[{id:"slowness",amplifier:0b,duration:400,show_particles:0b},{id:"mining_fatigue",amplifier:0b,duration:400,show_particles:0b},{id:"instant_damage",amplifier:0b,duration:20,show_particles:0b},{id:"blindness",amplifier:0b,duration:80,show_particles:0b}]}]
give @r[team=switch.temp.spectre] splash_potion[item_name={"text":"Potion dévastatrice du fantôme"},lore=[{"text":"À lancer sur les visibles","color":"white","italic":false}],potion_contents={custom_color:3080257,potion:"minecraft:water",custom_effects:[{id:"slowness",amplifier:0b,duration:400,show_particles:0b},{id:"nausea",amplifier:0b,duration:200,show_particles:0b},{id:"poison",amplifier:0b,duration:220,show_particles:0b}]}]
give @r[team=switch.temp.spectre] splash_potion[item_name={"text":"Potion dévastatrice du fantôme"},lore=[{"text":"À lancer sur les visibles","color":"white","italic":false}],potion_contents={custom_color:3080257,potion:"minecraft:water",custom_effects:[{id:"slowness",amplifier:0b,duration:400,show_particles:0b},{id:"nausea",amplifier:0b,duration:200,show_particles:0b},{id:"poison",amplifier:0b,duration:220,show_particles:0b}]}]
give @r[team=switch.temp.spectre] splash_potion[item_name={"text":"Potion dévastatrice du fantôme"},lore=[{"text":"À lancer sur les visibles","color":"white","italic":false}],potion_contents={custom_color:3080257,potion:"minecraft:water",custom_effects:[{id:"slowness",amplifier:0b,duration:400,show_particles:0b},{id:"nausea",amplifier:0b,duration:200,show_particles:0b},{id:"poison",amplifier:0b,duration:220,show_particles:0b}]}]

# Start effects give
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance 18 255 true
effect give @a[tag=!detached] fire_resistance 18 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] weakness 22 255 true
effect give @a[team=switch.temp.visible] blindness 11 255 true
effect give @a[team=switch.temp.spectre] blindness 3 255 true
effect give @a[tag=!detached] slowness 8 255 true

