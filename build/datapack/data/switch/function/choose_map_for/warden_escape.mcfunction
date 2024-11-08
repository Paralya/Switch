
#> switch:choose_map_for/warden_escape
#
# @within	switch:modes/warden_escape/start
#

## Vérification de la liste des maps
# Détection du nombre restant de maps à charger
scoreboard players set #mc switch.data 0
execute store result score #mc switch.data run data get storage switch:main warden_escape_maps

# Si il n'y a plus de maps à charger, ajouter les maps à la liste des maps à charger
execute if score #mc switch.data matches 0 run data modify storage switch:main warden_escape_maps append value "warden_forest"
execute if score #mc switch.data matches 0 run data modify storage switch:main warden_escape_maps append value "cathedrale_liege"
execute if score #mc switch.data matches 0 run data modify storage switch:main warden_escape_maps append value "new_grounds"
execute if score #mc switch.data matches 0 run data modify storage switch:main warden_escape_maps append value "warden_escape_statue"



## Chargement de la map
# Passage en paramètre de la liste des maps à charger
data modify storage switch:main maps_to_choose set from storage switch:main warden_escape_maps

# Fonction de chargement de la map
function switch:maps/load

## Suppression de la map chargée de la liste des maps à charger
# Passage en paramètre de la liste des maps à charger
data modify storage switch:main copy set from storage switch:main warden_escape_maps

# Suppression de la map chargée de la liste des maps à charger
function switch:maps/storage_map_list/remove_from_storage

# Application de la nouvelle liste des maps à charger
data modify storage switch:main warden_escape_maps set from storage switch:main new

