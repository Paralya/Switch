
#> switch:modes/race/start
#
# @within	switch:modes/race/calls/start
#

scoreboard players set @a[tag=!detached] switch.alive 1

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
execute as @a[tag=!detached] run attribute @s gravity base set 0
function switch:utils/set_dynamic_time

gamerule minecraft:fall_damage false

function switch:modes/race/translations/start

# Tell map loading that it's race game mode
scoreboard players set #is_race switch.data 1

# Setup starting variables
scoreboard players set #can_vote switch.data 1
scoreboard players set #remaining_time switch.data 615
scoreboard players set #race_seconds switch.data -15
scoreboard players set #race_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0

function switch:modes/_common/racing_start_setup

## Téléportation des joueurs + give d'items
scoreboard players set #dont_regenerate switch.data 1
function switch:utils/choose_map_for {id:"race", maps:["bowser_castle","snow_travel","mario_circuit","plains_routine","sakura_land","hills_land","airship_fortress","dk_mountain","clock_circuit","boat_race_1","boat_race_2"]}
schedule function switch:modes/race/give_items 1s
schedule function switch:modes/race/post_load 9s

# Get the map type (shopping kart = 0, boat = 1, etc.)
scoreboard players set #map_type switch.data 0
execute if data storage switch:main {map:"boat_race_1"} run scoreboard players set #map_type switch.data 1
execute if data storage switch:main {map:"boat_race_2"} run scoreboard players set #map_type switch.data 1

