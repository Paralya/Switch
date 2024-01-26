
gamemode survival @a[tag=!detached]
scoreboard players set @a[tag=!detached] switch.alive 1

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance 15 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] weakness 15 255 true
effect give @a[tag=!detached] blindness 10 255 true
effect give @a[tag=!detached] slowness 8 255 true
function switch:utils/set_dynamic_time

## Placement de la map et des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/beat_the_kings

gamerule mobGriefing true
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Beat The Kings, tenez-vous prêt vous avez 15 secondes de resistance !\n"}]
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 901
scoreboard players set #beat_the_kings_seconds switch.data -1
scoreboard players set #beat_the_kings_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.damages dummy {"text":" Coups infligés ","color":"aqua"}
scoreboard objectives add switch.temp.killed_kings teamkill.dark_purple
scoreboard objectives setdisplay sidebar switch.temp.damages
scoreboard objectives setdisplay list switch.health

# Choix des rôles + give d'items
team add switch.temp.civil
team add switch.temp.king
team modify switch.temp.civil color gray
team modify switch.temp.king color dark_purple
scoreboard players set #next_role switch.data 0
execute as @a[tag=!detached,sort=random] at @s run function switch:modes/beat_the_kings/roles/
execute as @a[tag=!detached] at @s run function switch:modes/beat_the_kings/give_items

execute as @e[limit=2] run give @r[team=switch.temp.king] splash_potion{display:{Name:'{"text":"Potion dévastatrice du tyran","italic":false}',Lore:['{"text":"À lancer sur les civils","color":"white","italic":false}']},custom_potion_effects:[{id:"minecraft:slowness",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:mining_fatigue",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:blindness",amplifier:0b,duration:110,show_particles:0b}],Potion:"minecraft:water",CustomPotionColor:7039516}
execute as @e[limit=2] run give @r[team=switch.temp.king] splash_potion{display:{Name:'{"text":"Potion destructrice du tyran","italic":false}',Lore:['{"text":"À lancer sur les civils","color":"white","italic":false}']},custom_potion_effects:[{id:"minecraft:slowness",amplifier:0b,duration:400,show_particles:0b},{id:"minecraft:nausea",amplifier:1b,duration:200,show_particles:0b},{id:"minecraft:poison",amplifier:0b,duration:320,show_particles:0b}],Potion:"minecraft:water",CustomPotionColor:5711412}
execute as @e[limit=2] run give @r[team=switch.temp.king] splash_potion{display:{Name:'{"text":"Potion de malnutrition du tyran","italic":false}',Lore:['{"text":"À lancer sur les civils","color":"white","italic":false}']},custom_potion_effects:[{id:"minecraft:mining_fatigue",amplifier:1b,duration:60},{id:"minecraft:hunger",amplifier:1b,duration:300},{id:"minecraft:poison",amplifier:1b,duration:40}],CustomPotionColor:12763581}

