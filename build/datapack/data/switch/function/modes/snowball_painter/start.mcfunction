
#> switch:modes/snowball_painter/start
#
# @within	switch:modes/snowball_painter/calls/start
#

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
function switch:utils/choose_map_for {id:"snowball_painter", maps:["snowball_painter"]}

function switch:translations/modes_snowball_painter_start

scoreboard players set #snowball_painter_seconds switch.data -10
scoreboard players set #snowball_painter_ticks switch.data 0
scoreboard players set #remaining_time switch.data 1000
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.color dummy
scoreboard objectives add switch.temp.points dummy {"text":" Points ","color":"red"}
scoreboard objectives setdisplay sidebar switch.temp.points

## Order selection
scoreboard players set #position switch.data 0
execute as @a[tag=!detached,sort=random] run function switch:modes/snowball_painter/define_color

