
##Fonction executée lors du lancement de la partie

kill @e[type=!player,type=!marker]
kill @e[type=!player,type=!marker]

clear @a
effect clear @a
gamemode survival @a
team leave @a

effect give @a saturation 999999 255 true
effect give @a resistance 15 255 true
effect give @a regeneration 10 255 true
effect give @a weakness 15 255 true
effect give @a blindness 10 255 true
effect give @a slowness 8 255 true
difficulty normal
time set 0
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
weather clear

##Placement de la map et des joueurs
execute unless data storage switch:main protect_the_king_maps[0] run data modify storage switch:main protect_the_king_maps set value ["traitor_original", "mushroom_plains", "jayl_dark_forest", "dark_forest_hills"]
data modify storage switch:main maps_to_choose set from storage switch:main protect_the_king_maps
function switch:maps/load
data modify storage switch:main copy set from storage switch:main protect_the_king_maps
function switch:maps/storage_map_list/remove_from_storage
data modify storage switch:main protect_the_king_maps set from storage switch:main new
execute as @a run function switch:modes/protect_the_king/random_tp

gamerule mobGriefing true
gamerule showDeathMessages true
gamerule fallDamage true
gamerule naturalRegeneration false
gamerule keepInventory false

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Protect The King, tenez-vous prêt !\n"}]
execute as @a at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 901
scoreboard players set #protect_the_king_seconds switch.data -1
scoreboard players set #protect_the_king_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #cut_clean switch.data 1
scoreboard objectives add switch.temp.deathCount deathCount
scoreboard objectives setdisplay list switch.health

#Choix des rôles + give d'items
team add switch.temp.red_king
team add switch.temp.blue_king
team add switch.temp.red
team add switch.temp.blue
team modify switch.temp.red_king color dark_red
team modify switch.temp.blue_king color dark_blue
team modify switch.temp.red color red
team modify switch.temp.blue color blue
scoreboard players set #next_role switch.data 0
tag @a remove switch.king
execute as @a[sort=random] at @s run function switch:modes/protect_the_king/roles
function switch:modes/protect_the_king/better_tp
tp @a[team=switch.temp.red] @p[team=switch.temp.red_king]
tp @a[team=switch.temp.blue] @p[team=switch.temp.blue_king]
execute as @a at @s run function switch:modes/protect_the_king/give_items

