
gamemode survival @a[tag=!detached]
scoreboard players set @a[tag=!detached] switch.alive 1

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance 15 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] weakness 15 255 true
function switch:utils/set_dynamic_time

## Placement de la map et des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {id:"beat_the_kings", maps:["traitor_original","mushroom_plains","dark_forest_hills","zonweeb_highschool","hider_mansion","nuketown_no_barrier"]}

execute in switch:game run gamerule mobGriefing true
execute in switch:game run gamerule naturalRegeneration false
execute in switch:game run gamerule keepInventory true

function switch:translations/modes_beat_the_kings_start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 901
scoreboard players set #beat_the_kings_seconds switch.data -10
scoreboard players set #beat_the_kings_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.killed_kings teamkill.dark_purple
scoreboard objectives setdisplay list switch.health

# Choix des rôles + give d'items
team add switch.temp.civil {"text":"[Civil]","color":"gray"}
team add switch.temp.king {"text":"[King]","color":"dark_purple"}
team modify switch.temp.civil color gray
team modify switch.temp.king color dark_purple
scoreboard players set #next_role switch.data 0
execute as @a[tag=!detached,sort=random] at @s run function switch:modes/beat_the_kings/roles/main
execute as @a[tag=!detached] at @s run function switch:modes/beat_the_kings/give_items

give @r[team=switch.temp.king] splash_potion[item_name={"text":"Potion dévastatrice du tyran"},lore=[{"text":"À lancer sur les civils","color":"white","italic":false}],potion_contents={potion:"minecraft:water",custom_color:7039516,custom_effects:[{id:"slowness",amplifier:0b,duration:400,show_particles:0b},{id:"mining_fatigue",amplifier:0b,duration:400,show_particles:0b},{id:"blindness",amplifier:0b,duration:110,show_particles:0b}]}]
give @r[team=switch.temp.king] splash_potion[item_name={"text":"Potion destructrice du tyran"},lore=[{"text":"À lancer sur les civils","color":"white","italic":false}],potion_contents={potion:"minecraft:water",custom_color:5711412,custom_effects:[{id:"slowness",amplifier:0b,duration:400,show_particles:0b},{id:"nausea",amplifier:1b,duration:200,show_particles:0b},{id:"poison",amplifier:0b,duration:320,show_particles:0b}]}]
give @r[team=switch.temp.king] splash_potion[item_name={"text":"Potion de malnutrition du tyran"},lore=[{"text":"À lancer sur les civils","color":"white","italic":false}],potion_contents={custom_color:12763581,custom_effects:[{id:"mining_fatigue",amplifier:1b,duration:60},{id:"hunger",amplifier:1b,duration:300},{id:"poison",amplifier:1b,duration:40}]}]

give @r[team=switch.temp.king] splash_potion[item_name={"text":"Potion dévastatrice du tyran"},lore=[{"text":"À lancer sur les civils","color":"white","italic":false}],potion_contents={potion:"minecraft:water",custom_color:7039516,custom_effects:[{id:"slowness",amplifier:0b,duration:400,show_particles:0b},{id:"mining_fatigue",amplifier:0b,duration:400,show_particles:0b},{id:"blindness",amplifier:0b,duration:110,show_particles:0b}]}]
give @r[team=switch.temp.king] splash_potion[item_name={"text":"Potion destructrice du tyran"},lore=[{"text":"À lancer sur les civils","color":"white","italic":false}],potion_contents={potion:"minecraft:water",custom_color:5711412,custom_effects:[{id:"slowness",amplifier:0b,duration:400,show_particles:0b},{id:"nausea",amplifier:1b,duration:200,show_particles:0b},{id:"poison",amplifier:0b,duration:320,show_particles:0b}]}]
give @r[team=switch.temp.king] splash_potion[item_name={"text":"Potion de malnutrition du tyran"},lore=[{"text":"À lancer sur les civils","color":"white","italic":false}],potion_contents={custom_color:12763581,custom_effects:[{id:"mining_fatigue",amplifier:1b,duration:60},{id:"hunger",amplifier:1b,duration:300},{id:"poison",amplifier:1b,duration:40}]}]

# Teleportation des joueurs ensemble (par team)
tp @a[team=switch.temp.civil] @r[team=switch.temp.civil]
tp @a[team=switch.temp.king] @r[team=switch.temp.king]

