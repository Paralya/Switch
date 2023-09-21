
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
function switch:choose_map_for/beat_the_kings

gamerule mobGriefing true
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Beat The Kings, tenez-vous prêt vous avez 15 secondes de resistance !\n"}]
execute as @a at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 901
scoreboard players set #beat_the_kings_seconds switch.data -1
scoreboard players set #beat_the_kings_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #cut_clean switch.data 1

scoreboard objectives add switch.temp.id dummy
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.deathCount deathCount
scoreboard objectives add switch.temp.damages dummy {"text":" Coups infligés ","color":"aqua"}
scoreboard objectives setdisplay sidebar switch.temp.damages
scoreboard objectives setdisplay list switch.health

# Choix des rôles + give d'items
team add switch.temp.civil
team add switch.temp.king
team modify switch.temp.civil color gray
team modify switch.temp.king color dark_purple
scoreboard players set #next_role switch.data 0
scoreboard players set #next_player_id switch.data 0
execute as @a[sort=random] at @s run function switch:modes/beat_the_kings/roles/
execute as @a at @s run function switch:modes/beat_the_kings/give_items

give @r[team=switch.temp.king] splash_potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:2,Duration:400,ShowParticles:0b},{Id:4,Duration:400,ShowParticles:0b},{Id:7,ShowParticles:0b},{Id:15,Duration:80,ShowParticles:0b}],CustomPotionColor:7039516,display:{Name:'{"text":"Potion dévastatrice du tyran","italic":false}',Lore:['{"text":"À lancer sur les civils","italic":false,"color":"white"}']}}
give @r[team=switch.temp.king] splash_potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:2,Duration:400,ShowParticles:0b},{Id:4,Duration:400,ShowParticles:0b},{Id:7,ShowParticles:0b},{Id:15,Duration:80,ShowParticles:0b}],CustomPotionColor:7039516,display:{Name:'{"text":"Potion dévastatrice du tyran","italic":false}',Lore:['{"text":"À lancer sur les civils","italic":false,"color":"white"}']}}
give @r[team=switch.temp.king] splash_potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:2,Duration:400,ShowParticles:0b},{Id:9,Duration:200,ShowParticles:0b},{Id:19,Duration:220,ShowParticles:0b}],CustomPotionColor:5711412,display:{Name:'{"text":"Potion destructrice du tyran","italic":false}',Lore:['{"text":"À lancer sur les civils","italic":false,"color":"white"}']}}
give @r[team=switch.temp.king] splash_potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:2,Duration:400,ShowParticles:0b},{Id:9,Duration:200,ShowParticles:0b},{Id:19,Duration:220,ShowParticles:0b}],CustomPotionColor:5711412,display:{Name:'{"text":"Potion destructrice du tyran","italic":false}',Lore:['{"text":"À lancer sur les civils","italic":false,"color":"white"}']}}
give @r[team=switch.temp.king] splash_potion{CustomPotionEffects:[{Id:4,Amplifier:1,Duration:60,Ambient:1b},{Id:9,Duration:120,Ambient:1b},{Id:15,Duration:20,Ambient:1b},{Id:17,Amplifier:1,Duration:300,Ambient:1b},{Id:19,Amplifier:1,Duration:40,Ambient:1b},{Id:24,Duration:160,Ambient:1b},{Id:31,Duration:200,Ambient:1b}],CustomPotionColor:12763581,display:{Name:'{"text":"Potion de malnutrition du tyran","italic":false}',Lore:['{"text":"À lancer sur les civils","italic":false,"color":"white"}']}}
give @r[team=switch.temp.king] splash_potion{CustomPotionEffects:[{Id:4,Amplifier:1,Duration:60,Ambient:1b},{Id:9,Duration:120,Ambient:1b},{Id:15,Duration:20,Ambient:1b},{Id:17,Amplifier:1,Duration:300,Ambient:1b},{Id:19,Amplifier:1,Duration:40,Ambient:1b},{Id:24,Duration:160,Ambient:1b},{Id:31,Duration:200,Ambient:1b}],CustomPotionColor:12763581,display:{Name:'{"text":"Potion de malnutrition du tyran","italic":false}',Lore:['{"text":"À lancer sur les civils","italic":false,"color":"white"}']}}

