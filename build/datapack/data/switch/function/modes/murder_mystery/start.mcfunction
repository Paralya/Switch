
#> switch:modes/murder_mystery/start
#
# @within	switch:modes/murder_mystery/calls/start
#

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
effect give @a[tag=!detached] weakness infinite 255 true
function switch:utils/set_dynamic_time

gamerule fallDamage false
gamerule keepInventory true

## Chargement de la map
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {id:"murder_mystery", maps:["ghost_town","remelta_cluedo","jn_murder_mystery","charly_murder_2018","cluedo_casino"]}

function switch:translations/modes_murder_mystery_start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 245
scoreboard players set #murder_mystery_seconds switch.data -8
scoreboard players set #murder_mystery_ticks switch.data 0
scoreboard players set #detective_reload switch.data 0
scoreboard players set #murderer_reload switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.role dummy
scoreboard objectives add switch.temp.nb_arrows_get dummy
scoreboard objectives add switch.temp.throw_reload dummy

# Scoreboard permanents
scoreboard objectives add switch.games_not_being_murderer dummy
scoreboard objectives add switch.games_not_being_detective dummy
execute as @a[tag=!detached] unless score @s switch.games_not_being_murderer matches 1.. run scoreboard players set @s switch.games_not_being_murderer 1
execute as @a[tag=!detached] unless score @s switch.games_not_being_detective matches 1.. run scoreboard players set @s switch.games_not_being_detective 1

# Title actionbar de leur pourcentage de chance
scoreboard players set #total_murderer switch.data 0
scoreboard players set #total_detective switch.data 0
scoreboard players operation #total_murderer switch.data += @a[tag=!detached] switch.games_not_being_murderer
scoreboard players operation #total_detective switch.data += @a[tag=!detached] switch.games_not_being_detective
execute as @a[tag=!detached] run function switch:modes/murder_mystery/percentage/title

# Choix du murder et du detective
function switch:modes/murder_mystery/percentage/select_roles

# Hide nametags
team add switch.temp {"text":"[Temp]"}
team modify switch.temp nametagVisibility never
team join switch.temp @a[tag=!detached]

# Teleport players override
execute if data storage switch:main {map:"jn_murder_mystery"} run scoreboard players set #remaining_time switch.data 305

