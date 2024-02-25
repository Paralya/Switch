
gamemode spectator @a[tag=!detached]
effect give @a[tag=!detached] saturation infinite 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
function switch:choose_map_for/simultaneous_jump

gamerule showDeathMessages false
gamerule keepInventory true

tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Simultaneous Jump dans 5 secondes ! Comme le Dé à Coudre, vous devez marquer le plus de points en sautant dans des points d'eau encerclé de blocs, mais tout cela en même temps que tout le monde et avec le PvP d'activé !"}]

scoreboard players set #simultaneous_jump_seconds switch.data -5
scoreboard players set #simultaneous_jump_ticks switch.data 0
scoreboard players set #remaining_time switch.data 65
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0
scoreboard objectives add switch.temp.color dummy
scoreboard objectives add switch.temp.points dummy {"text":" Points ","color":"red"}
scoreboard objectives add switch.temp.nb_de_a_coudre dummy
scoreboard objectives setdisplay sidebar switch.temp.points

## Order selection for the color
scoreboard players set #position switch.data 0
scoreboard players set #next switch.data 0
execute as @a[tag=!detached,sort=random] run function switch:modes/simultaneous_jump/define_color
scoreboard players operation #max switch.data = #position switch.data
execute as @a[tag=!detached] run function switch:modes/simultaneous_jump/teleport

