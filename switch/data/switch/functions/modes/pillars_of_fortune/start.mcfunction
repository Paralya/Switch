
gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] blindness 10 255 true
effect give @a[tag=!detached] weakness 10 255 true
effect give @a[tag=!detached] saturation 10 255 true
effect give @a[tag=!detached] resistance 10 255 true
effect give @a[tag=!detached] regeneration 10 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 0
function switch:choose_map_for/pillars_of_fortune
function switch:translations/modes_pillars_of_fortune_start

scoreboard players set #remaining_time switch.data 610
scoreboard players set #pillars_of_fortune_seconds switch.data -10
scoreboard players set #pillars_of_fortune_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives setdisplay list switch.health

# Teleport players and make a structure
spreadplayers 161050 161050 5 30 under 190 false @a[tag=!detached]
execute as @a[tag=!detached] at @s run tp @s ~ 164 ~
execute at @a[tag=!detached] run fill ~ 111 ~ ~ 163 ~ bedrock

