
scoreboard players set @a[tag=!detached] switch.alive 1
effect give @a[tag=!detached] night_vision infinite 255 true
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration 5 255 true
effect give @a[tag=!detached] resistance 12 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs + give d'items
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {id:"creeper_apocalypse", maps:["enchanting_island","friends_cube_lobby","zonweeb_main","jn_countries_castle","even_old_japan"]}

execute in switch:game run gamerule mobGriefing true
execute in switch:game run gamerule showDeathMessages false
execute in switch:game run gamerule naturalRegeneration false
execute in switch:game run gamerule keepInventory true

function switch:translations/modes_creeper_apocalypse_start

scoreboard players set #remaining_time switch.data 105
scoreboard players set #creeper_apocalypse_seconds switch.data -10
scoreboard players set #creeper_apocalypse_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives setdisplay list switch.health
scoreboard objectives add switch.temp.duplication dummy
scoreboard objectives add switch.temp.ocelot dummy

execute as @a[tag=!detached] at @s run function switch:modes/creeper_apocalypse/give_items

