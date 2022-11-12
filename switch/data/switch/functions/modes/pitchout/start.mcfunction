
##Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team leave @a
tag @a add switch.first_life
tag @a add switch.second_life
tag @a add switch.third_life

kill @e[type=item]
kill @e[type=arrow]

effect give @a speed 99999 0 true
effect give @a jump_boost 99999 2 true
effect give @a saturation 99999 255 true
effect give @a resistance 99999 255 true
effect give @a regeneration 5 255 true
difficulty normal
time set 6000
weather clear

##Téléportation des joueurs
data modify storage switch:main maps_to_choose set value ["pitchout_1"]
function switch:maps/load
scoreboard players set #spawn_count switch.data 0
execute if data storage switch:main {map:"pitchout_1"} as @a[sort=random] run function switch:modes/pitchout/map_1/teleport_players
execute as @a run function switch:modes/pitchout/xp_bar

gamerule mobGriefing false
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Pitchout, exterminez les autres !"}]

scoreboard objectives add switch.temp.cooldown dummy
scoreboard players set @a switch.temp.cooldown 100

scoreboard players set #pitchout_seconds switch.data -5
scoreboard players set #pitchout_ticks switch.data 0
scoreboard players set #process_end switch.data 0

