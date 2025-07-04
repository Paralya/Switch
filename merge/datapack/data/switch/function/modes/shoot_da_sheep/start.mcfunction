
team join switch.no_pvp @a[tag=!detached]
effect give @a[tag=!detached] saturation infinite 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
function switch:utils/choose_map_for {id:"shoot_da_sheep", maps:["shoot_da_sheep"]}
execute as @a[tag=!detached] run function switch:maps/survival/shoot_da_sheep/tp_shoot_da_sheep

function switch:translations/modes_shoot_da_sheep_start

scoreboard players set #shoot_da_sheep_seconds switch.data -10
scoreboard players set #shoot_da_sheep_ticks switch.data 0
scoreboard players set #remaining_time switch.data 65
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.points dummy {"text":"Points","color":"red"}
scoreboard objectives add switch.temp.black_shot dummy
scoreboard objectives setdisplay sidebar switch.temp.points

give @a[tag=!detached] bow[unbreakable={},enchantments={infinity:10}]
give @a[tag=!detached] arrow

