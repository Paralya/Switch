
## Fonction executée lors du lancement de la partie

kill @e[type=!player,type=!marker]
kill @e[type=!player,type=!marker]

clear @a
effect clear @a
gamemode adventure @a
team leave @a

effect give @a saturation infinite 255 true
effect give @a regeneration 10 255 true
effect give @a resistance infinite 255 true
effect give @a weakness infinite 255 true

time set 0
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
weather clear

gamerule fallDamage false

## Chargement de la map
scoreboard players set #is_adventure switch.data 1
function switch:choose_map_for/murder_mystery

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Murder Mystery, votre rôle va vous être donné !\n"}]
execute as @a at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 310
scoreboard players set #murder_mystery_seconds switch.data -10
scoreboard players set #murder_mystery_ticks switch.data 0
scoreboard players set #detective_reload switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.role dummy
scoreboard objectives setdisplay list switch.health

# Choix du murder et du detective
scoreboard players set @a switch.temp.role 1
scoreboard players set @r switch.temp.role 2
scoreboard players set @r[scores={switch.temp.role=1}] switch.temp.role 3

# Teleport players
execute if data storage switch:main {map:"cathedrale_liege"} run spreadplayers 26000 26000 1 10 under 123 false @a
execute if data storage switch:main {map:"zonweeb_highschool"} run spreadplayers 53000 53000 1 50 under 120 false @a
execute if data storage switch:main {map:"ghost_town"} as @a run function switch:maps/spread_one_player
execute if data storage switch:main {map:"nuketown"} run spreadplayers 72104 72079 1 20 under 114 false @a
execute if data storage switch:main {map:"werewolf_village"} run spreadplayers 93061 93061 1 25 under 115 false @a

