
##Fonction executée lors du lancement de la partie

kill @e[type=!player]
kill @e[type=!player]

clear @a
effect clear @a
gamemode survival @a
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

##Placement de la map et des joueurs
data modify storage switch:main maps_to_choose set value ["rush_the_point_1"]
function switch:engine/maps/load

gamerule mobGriefing false
gamerule showDeathMessages true
gamerule fallDamage true
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Rush The Point, tenez-vous prêt vous avez 10 secondes de préparation !"}]

scoreboard players set #remaining_time switch.data 610
scoreboard players set #rush_the_point_seconds switch.data -10
scoreboard players set #rush_the_point_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.id dummy
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.deathCount deathCount
scoreboard objectives setdisplay sidebar switch.temp.playerKillCount

#Choix des rôles + give d'items
team add switch.temp.red
team add switch.temp.blue
team modify switch.temp.red color red
team modify switch.temp.blue color blue
scoreboard players set #next_role switch.data 0
scoreboard players set #next_player_id switch.data 0
execute as @a[sort=random] at @s run function switch:modes/rush_the_point/roles/
execute as @a at @s run function switch:modes/rush_the_point/give_items
execute as @a at @s run playsound entity.player.levelup ambient @s

