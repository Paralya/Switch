
## Fonction executée lors du lancement de la partie

kill @e[type=!player,type=!marker]
kill @e[type=!player,type=!marker]

clear @a
effect clear @a
gamemode adventure @a
team leave @a

effect give @a saturation 15 255 true
effect give @a resistance 60 255 true
effect give @a regeneration 10 255 true
difficulty normal
time set 0
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
weather clear

## Chargement de la map
function switch:choose_map_for/layers_4_teams

gamerule showDeathMessages true
gamerule fallDamage true
gamerule naturalRegeneration true
gamerule keepInventory false

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Layers, tenez-vous prêt !\n"}]
execute as @a at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 910
scoreboard players set #layers_4_teams_seconds switch.data -10
scoreboard players set #layers_4_teams_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #cut_clean switch.data 1
scoreboard objectives add switch.temp.deathCount deathCount
scoreboard objectives setdisplay list switch.health

# Choix des teams + give d'items
team add switch.temp.red
team add switch.temp.blue
team add switch.temp.green
team add switch.temp.yellow
team modify switch.temp.red color red
team modify switch.temp.blue color blue
team modify switch.temp.green color green
team modify switch.temp.yellow color yellow
team modify switch.temp.red friendlyFire false
team modify switch.temp.blue friendlyFire false
team modify switch.temp.green friendlyFire false
team modify switch.temp.yellow friendlyFire false
team modify switch.temp.red nametagVisibility hideForOtherTeams
team modify switch.temp.blue nametagVisibility hideForOtherTeams
team modify switch.temp.green nametagVisibility hideForOtherTeams
team modify switch.temp.yellow nametagVisibility hideForOtherTeams
scoreboard players set #next_role switch.data 0
execute as @a[sort=random] at @s run function switch:modes/layers_4_teams/team_and_give


