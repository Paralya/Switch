
## Fonction executée lors du lancement de la partie

kill @e[type=!player,type=!marker]

clear @a
effect clear @a
gamemode survival @a
team leave @a
scoreboard players set @a switch.alive 1

kill @e[type=item]
kill @e[type=arrow]

effect give @a saturation infinite 255 true
effect give @a resistance 15 255 true
effect give @a regeneration 10 255 true
effect give @a weakness 15 255 true
effect give @a blindness 10 255 true
effect give @a slowness 8 255 true
difficulty normal
time set 0
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
weather clear

## Placement de la map et des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/spectres_game

gamerule mobGriefing true
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Spectres Game, tenez-vous prêt vous avez 15 secondes de resistance !\n"}]
execute as @a at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 901
scoreboard players set #spectres_game_seconds switch.data -1
scoreboard players set #spectres_game_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #cut_clean switch.data 1

scoreboard objectives add switch.temp.id dummy
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.deathCount deathCount
scoreboard objectives add switch.temp.damages dummy {"text":" Coups infligés ","color":"aqua"}
scoreboard objectives setdisplay sidebar switch.temp.damages
scoreboard objectives setdisplay list switch.health

# Choix des rôles + give d'items
team add switch.temp.visible
team add switch.temp.spectre
team modify switch.temp.visible color dark_green
team modify switch.temp.spectre color yellow
scoreboard players set #next_role switch.data 0
scoreboard players set #next_player_id switch.data 0
execute as @a[sort=random] at @s run function switch:modes/spectres_game/roles/
execute as @a at @s run function switch:modes/spectres_game/give_items

give @r[team=switch.temp.spectre] splash_potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:2,Duration:400,ShowParticles:0b},{Id:4,Duration:400,ShowParticles:0b},{Id:7,ShowParticles:0b},{Id:15,Duration:80,ShowParticles:0b}],display:{Name:'{"text":"Potion dévastatrice du fantôme","italic":false}',Lore:['{"text":"À lancer sur les visibles","italic":false,"color":"white"}']}}
give @r[team=switch.temp.spectre] splash_potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:2,Duration:400,ShowParticles:0b},{Id:4,Duration:400,ShowParticles:0b},{Id:7,ShowParticles:0b},{Id:15,Duration:80,ShowParticles:0b}],display:{Name:'{"text":"Potion dévastatrice du fantôme","italic":false}',Lore:['{"text":"À lancer sur les visibles","italic":false,"color":"white"}']}}
give @r[team=switch.temp.spectre] splash_potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:2,Duration:400,ShowParticles:0b},{Id:9,Duration:200,ShowParticles:0b},{Id:19,Duration:220,ShowParticles:0b}],display:{Name:'{"text":"Potion dévastatrice du fantôme","italic":false}',Lore:['{"text":"À lancer sur les visibles","italic":false,"color":"white"}']}}
give @r[team=switch.temp.spectre] splash_potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:2,Duration:400,ShowParticles:0b},{Id:9,Duration:200,ShowParticles:0b},{Id:19,Duration:220,ShowParticles:0b}],display:{Name:'{"text":"Potion dévastatrice du fantôme","italic":false}',Lore:['{"text":"À lancer sur les visibles","italic":false,"color":"white"}']}}

