
## Fonction executée lors du lancement de la partie

kill @e[type=!player]
kill @e[type=!player]

clear @a
effect clear @a
gamemode adventure @a
team leave @a

effect give @a resistance 10 255 true
effect give @a saturation 10 255 true
effect give @a regeneration 10 255 true
effect give @a weakness 10 255 true
difficulty normal
time set 0
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
weather clear

## Placement de la map et des joueurs
function switch:choose_map_for/rush_the_point

gamerule mobGriefing false
gamerule showDeathMessages true
gamerule fallDamage true
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Rush The Point, tenez-vous prêt vous avez 10 secondes de préparation !"}]

scoreboard objectives add switch.temp.id dummy
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.deathCount deathCount
scoreboard objectives add switch.temp.choosen_class dummy
scoreboard objectives add switch.temp.break_obsidian minecraft.mined:minecraft.obsidian
scoreboard objectives add switch.temp.sidebar dummy {"text":"Points","color":"yellow"}
scoreboard objectives setdisplay sidebar switch.temp.sidebar

scoreboard players set #bonus_reload switch.data 30
scoreboard players set #remaining_time switch.data 610
scoreboard players set #rush_the_point_seconds switch.data -10
scoreboard players set #rush_the_point_ticks switch.data 0
scoreboard players set #blue_points switch.data 0
scoreboard players set #red_points switch.data 0
scoreboard players set #process_end switch.data 0

team add switch.temp.sidebar.5
team add switch.temp.sidebar.3
team add switch.temp.sidebar.2
team add switch.temp.sidebar.1
team modify switch.temp.sidebar.5 suffix [{"text":"Objectif : "},{"text":"2000","color":"yellow"},{"text":" points"}]
team modify switch.temp.sidebar.3 prefix [{"text":"Temps restant : "},{"text":"10","color":"yellow"},{"text":"m"}]
team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"}]
team modify switch.temp.sidebar.1 prefix [{"text":"Équipe Rouge : ","color":"red"}]
team modify switch.temp.sidebar.3 suffix [{"text":"00","color":"yellow"},{"text":"s"}]
team modify switch.temp.sidebar.2 suffix [{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.1 suffix [{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.2 color blue
team modify switch.temp.sidebar.1 color red
team join switch.temp.sidebar.5 §3
team join switch.temp.sidebar.3 §5
team join switch.temp.sidebar.2 §2
team join switch.temp.sidebar.1 §1
scoreboard players set §5 switch.temp.sidebar 5
scoreboard players set §r switch.temp.sidebar 4
scoreboard players set §3 switch.temp.sidebar 3
scoreboard players set §2 switch.temp.sidebar 2
scoreboard players set §1 switch.temp.sidebar 1


# Choix des rôles + give d'items
team add switch.rush_the_point.red
team add switch.rush_the_point.blue
team modify switch.rush_the_point.red color red
team modify switch.rush_the_point.blue color blue
team modify switch.rush_the_point.red nametagVisibility hideForOtherTeams
team modify switch.rush_the_point.blue nametagVisibility hideForOtherTeams
team modify switch.rush_the_point.red friendlyFire false
team modify switch.rush_the_point.blue friendlyFire false
scoreboard players set #next_role switch.data 0
scoreboard players set #next_player_id switch.data 0
execute as @a[sort=random] at @s run function switch:modes/rush_the_point/roles/

