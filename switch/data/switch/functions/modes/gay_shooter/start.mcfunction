
## Fonction executée lors du lancement de la partie

kill @e[type=!player]
kill @e[type=!player]

clear @a
effect clear @a
gamemode adventure @a
team leave @a
tag @a add switch.alive

kill @e[type=item]
kill @e[type=arrow]

effect give @a saturation 10 255 true
effect give @a regeneration 10 255 true
effect give @a weakness 5 255 true
effect give @a blindness 5 255 true
effect give @a slowness 5 255 true
difficulty normal
time set 0
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
weather clear

## Placement de la map et des joueurs
scoreboard players set #is_adventure switch.data 1
function switch:choose_map_for/gay_shooter

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Gay Shooter, ça se lance direct !"}]

scoreboard players set #remaining_time switch.data 301
scoreboard players set #gay_shooter_seconds switch.data 0
scoreboard players set #gay_shooter_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.deathCount deathCount
scoreboard objectives add switch.temp.shot_player minecraft.custom:minecraft.damage_dealt {"text":" Flèches touchées ","color":"yellow"}
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
tag @a remove switch.gay_shooter.gay
tag @a remove switch.gay_shooter.shooter
execute as @a[sort=random] at @s run function switch:modes/gay_shooter/roles
execute as @a at @s run function switch:modes/gay_shooter/give_items

