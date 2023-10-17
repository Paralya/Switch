
## Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode spectator @a
team leave @a

kill @e[type=item]

effect give @a saturation infinite 255 true
effect give @a regeneration 5 255 true
difficulty normal
time set 6000
weather clear

## Téléportation des joueurs
function switch:choose_map_for/simultaneous_jump

gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Simultaneous Jump, 5 secondes de préparation !"}]

scoreboard players set #simultaneous_jump_seconds switch.data -5
scoreboard players set #simultaneous_jump_ticks switch.data 0
scoreboard players set #remaining_time switch.data 65
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0
scoreboard objectives add switch.temp.color dummy
scoreboard objectives add switch.temp.points dummy {"text":" Points ","color":"red"}
scoreboard objectives add switch.temp.deathCount deathCount
scoreboard objectives setdisplay sidebar switch.temp.points

## Order selection for the color
scoreboard players set #position switch.data 0
scoreboard players set #next switch.data 0
execute as @a[sort=random] run function switch:modes/simultaneous_jump/define_color
scoreboard players operation #max switch.data = #position switch.data

# Teleport players
execute as @a run function switch:modes/simultaneous_jump/teleport

