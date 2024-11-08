
#> switch:modes/coin_chaser/start
#
# @within	switch:modes/coin_chaser/calls/start
#

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
function switch:utils/set_dynamic_time

gamerule fallDamage false

## Téléportation des joueurs
scoreboard players set #is_adventure switch.data 1
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/coin_chaser

function switch:translations/modes_coin_chaser_start

scoreboard players set #coin_chaser_seconds switch.data -10
scoreboard players set #coin_chaser_ticks switch.data 0
scoreboard players set #remaining_time switch.data 70
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.points dummy {"text":" Points ","color":"red"}
scoreboard objectives setdisplay sidebar switch.temp.points

execute as @a[tag=!detached] run function switch:modes/coin_chaser/give_items

