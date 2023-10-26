
effect give @a[tag=!switch.detached] saturation infinite 255 true
effect give @a[tag=!switch.detached] resistance infinite 255 true
effect give @a[tag=!switch.detached] weakness infinite 255 true
function switch:utils/set_dynamic_time

gamerule fallDamage false
gamerule keepInventory true

## Chargement de la map
scoreboard players set #is_adventure switch.data 1
function switch:choose_map_for/murder_mystery

tellraw @a[tag=!switch.detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Murder Mystery, votre rôle va vous être donné !\n"}]
execute as @a[tag=!switch.detached] at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 245
scoreboard players set #murder_mystery_seconds switch.data -5
scoreboard players set #murder_mystery_ticks switch.data 0
scoreboard players set #detective_reload switch.data 0
scoreboard players set #murderer_reload switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.role dummy
scoreboard objectives setdisplay list switch.health

# Choix du murder et du detective
scoreboard players set @a[tag=!switch.detached] switch.temp.role 1
scoreboard players set @r switch.temp.role 2
scoreboard players set @r[scores={switch.temp.role=1}] switch.temp.role 3

# Hide nametags
team add switch.temp
team modify switch.temp nametagVisibility never
team join switch.temp @a[tag=!switch.detached]

# Teleport players override
execute if data storage switch:main {map:"ghost_town"} as @a[tag=!switch.detached] run function switch:maps/spread_one_player

