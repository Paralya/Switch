
## Fonction executée lors du lancement de la partie

kill @e[type=!player,type=!marker]
kill @e[type=!player,type=!marker]

clear @a
effect clear @a
gamemode adventure @a
team leave @a

effect give @a saturation infinite 255 true
effect give @a resistance 15 255 true
effect give @a regeneration 10 255 true
difficulty normal
time set 0
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
weather clear

## Placement de la map et des joueurs
function switch:choose_map_for/panic_chase

gamerule fallDamage false
gamerule naturalRegeneration false

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Panic Chase, libération des chasseurs dans 15 secondes !\n"}]
execute as @a at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 135
scoreboard players set #panic_chase_seconds switch.data -15
scoreboard players set #panic_chase_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.deathCount deathCount
scoreboard objectives setdisplay list switch.health

# Choix des rôles + give d'items
team add switch.temp.hunter
team add switch.temp.mouse
team modify switch.temp.hunter color red
team modify switch.temp.mouse color blue
team modify switch.temp.hunter friendlyFire false
team modify switch.temp.mouse friendlyFire false
scoreboard players set #next_role switch.data 0
scoreboard players set #next_player_id switch.data 0
execute as @a[sort=random] at @s run function switch:modes/panic_chase/roles
execute as @a at @s run function switch:modes/panic_chase/give_items

