
## Vérification de la liste des maps
# Détection du nombre restant de maps à charger
scoreboard players set #mc switch.data 0
execute store result score #mc switch.data run data get storage switch:main traitors_game_maps

# Si il n'y a plus de maps à charger, ajouter les maps à la liste des maps à charger
execute if score #mc switch.data matches 0 run data modify storage switch:main traitors_game_maps append value "traitor_original"
execute if score #mc switch.data matches 0 run data modify storage switch:main traitors_game_maps append value "mushroom_plains"
execute if score #mc switch.data matches 0 run data modify storage switch:main traitors_game_maps append value "paralya_lobby_noel"
execute if score #mc switch.data matches 0 run data modify storage switch:main traitors_game_maps append value "zonweeb_highschool"
execute if score #mc switch.data matches 0 run data modify storage switch:main traitors_game_maps append value "hider_mansion"
execute if score #mc switch.data matches 0 run data modify storage switch:main traitors_game_maps append value "nuketown_no_barrier"
execute if score #mc switch.data matches 0 run data modify storage switch:main traitors_game_maps append value "paralya_lobby"



## Chargement de la map
# Passage en paramètre de la liste des maps à charger
data modify storage switch:main maps_to_choose set from storage switch:main traitors_game_maps

# Fonction de chargement de la map
function switch:maps/load

## Suppression de la map chargée de la liste des maps à charger
# Passage en paramètre de la liste des maps à charger
data modify storage switch:main copy set from storage switch:main traitors_game_maps

# Suppression de la map chargée de la liste des maps à charger
function switch:maps/storage_map_list/remove_from_storage

# Application de la nouvelle liste des maps à charger
data modify storage switch:main traitors_game_maps set from storage switch:main new

