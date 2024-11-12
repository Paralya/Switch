
#> switch:utils/choose_map_for
#
# @within	switch:modes/beat_the_kings/start {id:"beat_the_kings", maps:["traitor_original","mushroom_plains","dark_forest_hills","zonweeb_highschool","hider_mansion","nuketown_no_barrier"]}
#			switch:modes/block_party/start {id:"block_party", maps:["block_party"]}
#

## Vérification de la liste des maps
# Détection du nombre restant de maps à charger
scoreboard players set #mc switch.data 0
$execute store result score #mc switch.data run data get storage switch:main $(id)_maps

# Si il n'y a plus de maps à charger, ajouter les maps à la liste des maps à charger
$execute if score #mc switch.data matches 0 run data modify storage switch:main $(id)_maps set value $(maps)

## Chargement de la map
# Passage en paramètre de la liste des maps à charger
$data modify storage switch:main maps_to_choose set from storage switch:main $(id)_maps

# Fonction de chargement de la map
function switch:maps/load

## Suppression de la map chargée de la liste des maps à charger
# Passage en paramètre de la liste des maps à charger
$data modify storage switch:main copy set from storage switch:main $(id)_maps

# Suppression de la map chargée de la liste des maps à charger
function switch:maps/storage_map_list/remove_from_storage

# Application de la nouvelle liste des maps à charger
$data modify storage switch:main $(id)_maps set from storage switch:main new

