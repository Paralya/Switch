
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

give @r[team=switch.temp.king] splash_potion{display:{Name:'{"text":"Potion dévastatrice du tyran","italic":false}',Lore:['{"text":"À lancer sur les civils","color":"white","italic":false}']},custom_potion_effects:[{id:"minecraft:slowness",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:mining_fatigue",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:blindness",amplifier:0b,duration:80,show_particles:0b}],Potion:"minecraft:water",CustomPotionColor:7039516}
give @r[team=switch.temp.king] splash_potion{display:{Name:'{"text":"Potion dévastatrice du tyran","italic":false}',Lore:['{"text":"À lancer sur les civils","color":"white","italic":false}']},custom_potion_effects:[{id:"minecraft:slowness",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:mining_fatigue",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:blindness",amplifier:0b,duration:80,show_particles:0b}],Potion:"minecraft:water",CustomPotionColor:7039516}
give @r[team=switch.temp.king] splash_potion{display:{Name:'{"text":"Potion destructrice du tyran","italic":false}',Lore:['{"text":"À lancer sur les civils","color":"white","italic":false}']},custom_potion_effects:[{id:"minecraft:slowness",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:nausea",amplifier:0b,duration:200,show_particles:0b},{id:"minecraft:poison",amplifier:0b,duration:220,show_particles:0b}],Potion:"minecraft:water",CustomPotionColor:5711412}
give @r[team=switch.temp.king] splash_potion{display:{Name:'{"text":"Potion destructrice du tyran","italic":false}',Lore:['{"text":"À lancer sur les civils","color":"white","italic":false}']},custom_potion_effects:[{id:"minecraft:slowness",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:nausea",amplifier:0b,duration:200,show_particles:0b},{id:"minecraft:poison",amplifier:0b,duration:220,show_particles:0b}],Potion:"minecraft:water",CustomPotionColor:5711412}
give @r[team=switch.temp.king] splash_potion{display:{Name:'{"text":"Potion de malnutrition du tyran","italic":false}',Lore:['{"text":"À lancer sur les civils","color":"white","italic":false}']},custom_potion_effects:[{id:"minecraft:mining_fatigue",amplifier:1b,duration:60},{id:"minecraft:hunger",amplifier:1b,duration:300},{id:"minecraft:poison",amplifier:1b,duration:40}],CustomPotionColor:12763581}
give @r[team=switch.temp.king] splash_potion{display:{Name:'{"text":"Potion de malnutrition du tyran","italic":false}',Lore:['{"text":"À lancer sur les civils","color":"white","italic":false}']},custom_potion_effects:[{id:"minecraft:mining_fatigue",amplifier:1b,duration:60},{id:"minecraft:hunger",amplifier:1b,duration:300},{id:"minecraft:poison",amplifier:1b,duration:40}],CustomPotionColor:12763581}

