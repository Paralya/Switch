
gamemode survival @a[tag=!detached]
scoreboard players set @a[tag=!detached] switch.alive 1
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance 18 255 true
effect give @a[tag=!detached] fire_resistance 18 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] weakness 22 255 true
effect give @a[team=switch.temp.visible] blindness 11 255 true
effect give @a[team=switch.temp.spectre] blindness 3 255 true
effect give @a[tag=!detached] slowness 8 255 true
function switch:utils/set_dynamic_time

## Partie spectror game aléatoire

scoreboard objectives add switch.temp.spectror dummy
scoreboard players set #SPECTROR_GAME switch.data 0
execute if predicate switch:chance/0.1 run scoreboard players set #SPECTROR_GAME switch.data 1
scoreboard players set #SPECTROR_GAME switch.data 1

## Placement de la map et des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/spectres_game

## Bruit si Sprectror
execute if score #SPECTROR_GAME switch.data matches 1 as @a[tag=!detached] at @s run playsound block.anvil.use ambient @s

gamerule mobGriefing true
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Spectres Game, tenez-vous prêt vous avez 18 secondes de resistance !\n"}]
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

## Message Si Spectror
execute if score #SPECTROR_GAME switch.data matches 1 run tellraw @a[tag=!detached] ["",{"text":"-------------------------","color":"gray"},{"text":"\n"},{"text":"\u25ba","color":"gray"},{"text":" ParalyaWarning ","bold":true,"color":"red"},{"text":":","bold":true,"color":"gray"},{"text":" La partie est un","color":"#F8DBF8"},{"text":" SpectrorGame","bold":true,"color":"light_purple"},{"text":" ! Il y'a donc un traitre parmi l'équipe des invisibles.. Il devra faire son possible pour gagner seul. Attention, si tous les visibles meurent la victoire est donnée aux spectres, il doit donc attaquer rapidement !","color":"#FBDBFB"},{"text":"\n"},{"text":"-------------------------","color":"gray"}]
execute if score #SPECTROR_GAME switch.data matches 1 run title @a[tag=!detached] title {"text":"Spectror Game","color":"light_purple"}

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
team add switch.temp.visible
team add switch.temp.spectre
team modify switch.temp.visible color dark_green
team modify switch.temp.spectre color yellow
scoreboard players set #next_role switch.data 0
scoreboard players set #next_player_id switch.data 0
execute as @a[tag=!detached,sort=random] at @s run function switch:modes/spectres_game/roles/
# Si partie spectror game
execute if score #SPECTROR_GAME switch.data matches 1 run team join switch.temp.spectre @r[team=switch.temp.visible]
execute if score #SPECTROR_GAME switch.data matches 1 run scoreboard players set @r[team=switch.temp.spectre] switch.temp.spectror 1
execute as @a[tag=!detached] at @s run function switch:modes/spectres_game/give_items

give @r[team=switch.temp.spectre] splash_potion{display:{Name:'{"text":"Potion dévastatrice du fantôme","italic":false}',Lore:['{"text":"À lancer sur les visibles","color":"white","italic":false}']},custom_potion_effects:[{id:"minecraft:slowness",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:mining_fatigue",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:instant_damage",amplifier:0b,duration:20,show_particles:0b},{id:"minecraft:blindness",amplifier:0b,duration:80,show_particles:0b}],Potion:"minecraft:water"}
give @r[team=switch.temp.spectre] splash_potion{display:{Name:'{"text":"Potion dévastatrice du fantôme","italic":false}',Lore:['{"text":"À lancer sur les visibles","color":"white","italic":false}']},custom_potion_effects:[{id:"minecraft:slowness",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:mining_fatigue",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:instant_damage",amplifier:0b,duration:20,show_particles:0b},{id:"minecraft:blindness",amplifier:0b,duration:80,show_particles:0b}],Potion:"minecraft:water"}
give @r[team=switch.temp.spectre] splash_potion{display:{Name:'{"text":"Potion dévastatrice du fantôme","italic":false}',Lore:['{"text":"À lancer sur les visibles","color":"white","italic":false}']},custom_potion_effects:[{id:"minecraft:slowness",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:mining_fatigue",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:instant_damage",amplifier:0b,duration:20,show_particles:0b},{id:"minecraft:blindness",amplifier:0b,duration:80,show_particles:0b}],Potion:"minecraft:water"}
give @r[team=switch.temp.spectre] splash_potion{display:{Name:'{"text":"Potion dévastatrice du fantôme","italic":false}',Lore:['{"text":"À lancer sur les visibles","color":"white","italic":false}']},custom_potion_effects:[{id:"minecraft:slowness",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:nausea",amplifier:0b,duration:200,show_particles:0b},{id:"minecraft:poison",amplifier:0b,duration:220,show_particles:0b}],Potion:"minecraft:water"}
give @r[team=switch.temp.spectre] splash_potion{display:{Name:'{"text":"Potion dévastatrice du fantôme","italic":false}',Lore:['{"text":"À lancer sur les visibles","color":"white","italic":false}']},custom_potion_effects:[{id:"minecraft:slowness",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:nausea",amplifier:0b,duration:200,show_particles:0b},{id:"minecraft:poison",amplifier:0b,duration:220,show_particles:0b}],Potion:"minecraft:water"}
give @r[team=switch.temp.spectre] splash_potion{display:{Name:'{"text":"Potion dévastatrice du fantôme","italic":false}',Lore:['{"text":"À lancer sur les visibles","color":"white","italic":false}']},custom_potion_effects:[{id:"minecraft:slowness",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:nausea",amplifier:0b,duration:200,show_particles:0b},{id:"minecraft:poison",amplifier:0b,duration:220,show_particles:0b}],Potion:"minecraft:water"}

