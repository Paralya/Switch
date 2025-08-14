
#> switch:maps/load
#
# @within	switch:utils/choose_map_for
#

## Choix d'une map random de la liste maps_to_choose
## Avec 5 essaies de choisir une map différente de la précédente
data modify storage switch:main previous_map set from storage switch:main map
scoreboard players set #try switch.data 5
scoreboard players set #modulo_rand switch.data 0
execute store result score #modulo_rand switch.data run data get storage switch:temp maps_to_choose
function switch:maps/find_map

# Copy map
data modify storage switch:main map set from storage switch:main copy[0]
data modify storage switch:main previous_map set from storage switch:main map

# Load map
function switch:maps/load_gamemode

# Log message of which map is loaded
data modify storage switch:main MessageToLog set value [{"text":"Selected map: `"},{"nbt":"map","storage":"switch:main","interpret":false},{"text":"`!"}]
function switch:engine/log_message/apply

# Add map to history
data modify storage switch:main history.maps prepend from storage switch:main map

# As a new map is loaded, it has not been already regenerated
scoreboard players reset #already_regenerated switch.data

