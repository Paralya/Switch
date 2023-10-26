
effect give @a saturation infinite 255 true
effect give @a resistance 15 255 true
function switch:utils/set_dynamic_time

## Placement de la map et des joueurs
function switch:choose_map_for/panic_chase

gamerule fallDamage false

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Panic Chase, libération des chasseurs dans 15 secondes !\n"}]
execute as @a at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 135
scoreboard players set #panic_chase_seconds switch.data -15
scoreboard players set #panic_chase_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives setdisplay list switch.health

# Choix des rôles + give d'items
team add switch.temp.hunter
team add switch.temp.mouse
team modify switch.temp.hunter color red
team modify switch.temp.mouse color blue
team modify switch.temp.hunter friendlyFire false
team modify switch.temp.mouse friendlyFire false
team modify switch.temp.hunter nametagVisibility never
team modify switch.temp.mouse nametagVisibility never
team modify switch.temp.hunter collisionRule never
team modify switch.temp.mouse collisionRule never
scoreboard players set #next_role switch.data 0
scoreboard players set #next_player_id switch.data 0
execute as @a[sort=random] at @s run function switch:modes/panic_chase/roles
execute as @a at @s run function switch:modes/panic_chase/give_items

