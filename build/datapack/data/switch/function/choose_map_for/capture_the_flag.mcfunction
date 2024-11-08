
#> switch:choose_map_for/capture_the_flag
#
# @within	switch:choose_map_for/capture_the_flag
#			switch:modes/capture_the_flag/start
#

## Vérification de la liste des maps
# Détection du nombre restant de maps à charger
scoreboard players set #mc switch.data 0
execute store result score #mc switch.data run data get storage switch:main capture_the_flag_maps

# Si il n'y a plus de maps à charger, ajouter les maps à la liste des maps à charger
execute if score #mc switch.data matches 0 run data modify storage switch:main capture_the_flag_maps append value "operation_pigclaw"
execute if score #mc switch.data matches 0 run data modify storage switch:main capture_the_flag_maps append value "ctf_plains_castles"
execute if score #mc switch.data matches 0 run data modify storage switch:main capture_the_flag_maps append value "ctf_mountains_castles"
execute if score #mc switch.data matches 0 run data modify storage switch:main capture_the_flag_maps append value "ctf_flowers"
execute if score #mc switch.data matches 0 run data modify storage switch:main capture_the_flag_maps append value "ctf_nether"
execute if score #mc switch.data matches 0 run data modify storage switch:main capture_the_flag_maps append value "ctf_forest_castles"



## Chargement de la map
# Passage en paramètre de la liste des maps à charger
data modify storage switch:main maps_to_choose set from storage switch:main capture_the_flag_maps

# Fonction de chargement de la map
function switch:maps/load

## Suppression de la map chargée de la liste des maps à charger
# Passage en paramètre de la liste des maps à charger
data modify storage switch:main copy set from storage switch:main capture_the_flag_maps

# Suppression de la map chargée de la liste des maps à charger
function switch:maps/storage_map_list/remove_from_storage

# Application de la nouvelle liste des maps à charger
data modify storage switch:main capture_the_flag_maps set from storage switch:main new

## If not enough players for ctf_nether, restart it
execute store result score #count switch.data if entity @a[tag=!detached]
execute if score #count switch.data matches ..30 if data storage switch:main {map:"ctf_nether"} run function switch:choose_map_for/capture_the_flag
execute if score #count switch.data matches ..14 if data storage switch:main {map:"ctf_mountains_castles"} run function switch:choose_map_for/capture_the_flag

