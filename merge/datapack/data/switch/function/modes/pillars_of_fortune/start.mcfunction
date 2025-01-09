
gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] blindness 5 255 true
effect give @a[tag=!detached] weakness 5 255 true
effect give @a[tag=!detached] saturation 5 255 true
effect give @a[tag=!detached] resistance 5 255 true
effect give @a[tag=!detached] regeneration 5 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 0
function switch:utils/choose_map_for {id:"pillars_of_fortune", maps:["pillars_of_fortune"]}
function switch:translations/modes_pillars_of_fortune_start

execute in switch:game run gamerule mobGriefing true

scoreboard players set #remaining_time switch.data 605
scoreboard players set #pillars_of_fortune_seconds switch.data -5
scoreboard players set #pillars_of_fortune_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives setdisplay list switch.health

# Teleport players and make a structure
execute store result score #count switch.data if entity @a[tag=!detached]
execute if score #count switch.data matches ..5 run spreadplayers 161050 161050 8 16 under 190 false @a[tag=!detached]
execute if score #count switch.data matches 6..12 run spreadplayers 161050 161050 8 24 under 190 false @a[tag=!detached]
execute if score #count switch.data matches 13.. run spreadplayers 161050 161050 8 30 under 190 false @a[tag=!detached]
execute as @a[tag=!detached] at @s run tp @s ~ 142 ~
execute as @a[tag=!detached] at @s run summon item_display ~ 142 ~ {Tags:["switch.pillars_of_fortune"]}
execute at @a[tag=!detached] run fill ~ 111 ~ ~ 140 ~ bedrock

