
## Vérification de la liste des maps
# Détection du nombre restant de maps à charger
scoreboard players set #mc switch.data 0
execute store result score #mc switch.data run data get storage switch:main castagne_maps

# Si il n'y a plus de maps à charger, ajouter les maps à la liste des maps à charger
execute if score #mc switch.data matches 0 run data modify storage switch:main castagne_maps append value "kart_racer_relai"
execute if score #mc switch.data matches 0 run data modify storage switch:main castagne_maps append value "nuketown_no_barrier"
execute if score #mc switch.data matches 0 run data modify storage switch:main castagne_maps append value "sky_island_tower"
execute if score #mc switch.data matches 0 run data modify storage switch:main castagne_maps append value "wyvern_towers"
execute if score #mc switch.data matches 0 run data modify storage switch:main castagne_maps append value "paralya_lobby"
execute if score #mc switch.data matches 0 run data modify storage switch:main castagne_maps append value "jn_nature_box"



## Chargement de la map
# Passage en paramètre de la liste des maps à charger
data modify storage switch:main maps_to_choose set from storage switch:main castagne_maps

# Fonction de chargement de la map
function switch:maps/load

## Suppression de la map chargée de la liste des maps à charger
# Passage en paramètre de la liste des maps à charger
data modify storage switch:main copy set from storage switch:main castagne_maps

# Suppression de la map chargée de la liste des maps à charger
function switch:maps/storage_map_list/remove_from_storage

# Application de la nouvelle liste des maps à charger
data modify storage switch:main castagne_maps set from storage switch:main new

