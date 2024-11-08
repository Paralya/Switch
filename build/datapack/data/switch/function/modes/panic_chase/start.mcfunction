
#> switch:modes/panic_chase/start
#
# @within	switch:modes/panic_chase/calls/start
#

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance 15 255 true
function switch:utils/set_dynamic_time

## Placement de la map et des joueurs
function switch:choose_map_for/panic_chase

gamerule naturalRegeneration false
gamerule fallDamage false

execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

function switch:translations/modes_panic_chase_start
execute if data storage switch:main {map:"arti_box"} run scoreboard players set #remaining_time switch.data 150
execute if data storage switch:main {map:"arti_box"} run scoreboard players set #panic_chase_seconds switch.data -30
execute if data storage switch:main {map:"nether_storm"} run scoreboard players set #remaining_time switch.data 240
execute if data storage switch:main {map:"nether_storm"} run scoreboard players set #panic_chase_seconds switch.data -30
execute if data storage switch:main {map:"yeti_in_panic"} run scoreboard players set #remaining_time switch.data 240
execute if data storage switch:main {map:"yeti_in_panic"} run scoreboard players set #panic_chase_seconds switch.data -30
scoreboard players set #panic_chase_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives setdisplay list switch.health

# Choix des rôles + give d'items
team add switch.temp.hunter {"text":"[Hunter]","color":"red"}
team add switch.temp.mouse {"text":"[Mouse]","color":"blue"}
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
execute as @a[tag=!detached,sort=random] at @s run function switch:modes/panic_chase/roles
execute as @a[tag=!detached] at @s run function switch:modes/panic_chase/give_items

