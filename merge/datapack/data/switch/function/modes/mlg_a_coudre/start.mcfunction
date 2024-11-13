
clear @a[tag=!detached]
effect clear @a[tag=!detached]
gamemode spectator @a[tag=!detached]
team leave @a[tag=!detached]

kill @e[type=item]

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration 5 255 true
difficulty normal
time set 6000
weather clear

## Téléportation des joueurs
function switch:utils/choose_map_for {id:"mlg_a_coudre", maps:["mlg_a_coudre_1"]}

gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

function switch:translations/modes_mlg_a_coudre_start

scoreboard players set #mlg_a_coudre_seconds switch.data 0
scoreboard players set #mlg_a_coudre_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0
scoreboard objectives add switch.temp.order dummy
scoreboard objectives add switch.temp.lives dummy {"text":" Vies Restantes ","color":"red"}
scoreboard objectives add switch.temp.nb_de_a_coudre dummy
scoreboard objectives setdisplay sidebar switch.temp.lives

## Order selection
scoreboard players set #position switch.data 0
scoreboard players set #next switch.data 0
execute as @a[tag=!detached,sort=random] run function switch:modes/mlg_a_coudre/define_order
scoreboard players operation #max switch.data = #position switch.data

