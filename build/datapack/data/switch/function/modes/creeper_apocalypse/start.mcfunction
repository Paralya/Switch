
#> switch:modes/creeper_apocalypse/start
#
# @within	switch:modes/creeper_apocalypse/calls/start
#

scoreboard players set @a[tag=!detached] switch.alive 1
effect give @a[tag=!detached] night_vision infinite 255 true
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration 5 255 true
effect give @a[tag=!detached] resistance 12 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs + give d'items
function switch:utils/choose_map_for {id:"creeper_apocalypse", maps:["enchanting_island","friends_pvpbox_hills","friends_cube_lobby","zonweeb_main","pretty_garden"]}

gamerule mobGriefing true
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

function switch:translations/modes_creeper_apocalypse_start

scoreboard players set #remaining_time switch.data 105
scoreboard players set #creeper_apocalypse_seconds switch.data -5
scoreboard players set #creeper_apocalypse_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives setdisplay list switch.health
scoreboard objectives add switch.temp.duplication dummy
scoreboard objectives add switch.temp.ocelot dummy

execute as @a[tag=!detached] at @s run function switch:modes/creeper_apocalypse/give_items

