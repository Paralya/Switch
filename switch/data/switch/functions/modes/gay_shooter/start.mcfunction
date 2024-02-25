
scoreboard players set @a[tag=!detached] switch.alive 1
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] slowness 5 255 true
function switch:utils/set_dynamic_time

## Placement de la map et des joueurs
scoreboard players set #is_adventure switch.data 1
function switch:choose_map_for/gay_shooter

tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Gay Shooter, les tireurs doivent empêcher les coureurs de grimper la tour !"}]

scoreboard players set #remaining_time switch.data 301
scoreboard players set #gay_shooter_seconds switch.data 0
scoreboard players set #gay_shooter_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.shot_player dummy {"text":" Flèches touchées ","color":"yellow"}
scoreboard objectives add switch.temp.shots_taken dummy
scoreboard objectives setdisplay sidebar switch.temp.shot_player
scoreboard objectives setdisplay list switch.health

# Choix des rôles + give d'items
team add switch.temp.gays
team add switch.temp.shooters
team modify switch.temp.gays color light_purple
team modify switch.temp.shooters color gray
team modify switch.temp.gays friendlyFire false
team modify switch.temp.shooters friendlyFire false
team modify switch.temp.gays collisionRule never
team modify switch.temp.shooters collisionRule never
scoreboard players set #next_role switch.data 0
scoreboard players set #next_player_id switch.data 0
execute as @a[tag=!detached,sort=random] at @s run function switch:modes/gay_shooter/roles
execute as @a[tag=!detached] at @s run function switch:modes/gay_shooter/give_items

