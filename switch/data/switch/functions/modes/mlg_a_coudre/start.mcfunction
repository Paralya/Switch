
##Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode spectator @a
team leave @a

kill @e[type=item]

effect give @a saturation 99999 255 true
effect give @a regeneration 5 255 true
difficulty normal
time set 6000
weather clear

##Téléportation des joueurs
data modify storage switch:main maps_to_choose set value ["mlg_a_coudre_1"]
function switch:maps/load

gamerule mobGriefing false
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true
gamerule fallDamage true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de MLG à Coudre, on commence direct !"}]

scoreboard players set #mlg_a_coudre_seconds switch.data 0
scoreboard players set #mlg_a_coudre_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0
scoreboard objectives add switch.temp.order dummy
scoreboard objectives add switch.temp.lives dummy {"text":" Vies Restantes ","color":"red"}
scoreboard objectives add switch.temp.deathCount deathCount
scoreboard objectives setdisplay sidebar switch.temp.lives

##Order selection
scoreboard players set #position switch.data 0
scoreboard players set #next switch.data 0
execute as @a[sort=random] run function switch:modes/mlg_a_coudre/define_order
scoreboard players operation #max switch.data = #position switch.data

