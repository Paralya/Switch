
#> switch:modes/simultaneous_jump/start
#
# @within	switch:modes/simultaneous_jump/calls/start
#

gamemode spectator @a[tag=!detached]
effect give @a[tag=!detached] saturation infinite 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
function switch:utils/choose_map_for {id:"simultaneous_jump", maps:["de_a_coudre_1","mlg_a_coudre_1"]}

gamerule showDeathMessages false
gamerule keepInventory true

function switch:translations/modes_simultaneous_jump_start

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

