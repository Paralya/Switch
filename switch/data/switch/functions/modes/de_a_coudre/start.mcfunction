
##Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode survival @a
team leave @a

kill @e[type=item]

effect give @a mining_fatigue 5 255 true
effect give @a weakness 99999 255 true
effect give @a saturation 99999 255 true
effect give @a resistance 99999 255 true
effect give @a regeneration 5 255 true
difficulty normal
time set 6000
weather clear

##Téléportation des joueurs
data modify storage switch:main maps_to_choose set value ["de_a_coudre_1"]
function switch:engine/maps/load

gamerule mobGriefing false
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de de_a_coudre, 5 secondes de préparation et soyez le dernier en vie !"}]

scoreboard players set #de_a_coudre_seconds switch.data -5
scoreboard players set #de_a_coudre_ticks switch.data 0
scoreboard players set #process_end switch.data 0

