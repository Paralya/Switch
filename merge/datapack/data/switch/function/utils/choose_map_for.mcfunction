
## Vérification de la liste des maps
# Détection du nombre restant de maps à charger
scoreboard players set #mc switch.data 0
$execute store result score #mc switch.data run data get storage switch:maps choose_from.$(id)

# Si il n'y a plus de maps à charger, ajouter les maps à la liste des maps à charger
$execute if score #mc switch.data matches 0 run data modify storage switch:maps choose_from.$(id) set value $(maps)

## Chargement de la map
# Passage en paramètre de la liste des maps à charger
$data modify storage switch:temp maps_to_choose set from storage switch:maps choose_from.$(id)

# Fonction de chargement de la map
function switch:maps/load

## Suppression de la map chargée de la liste des maps à charger
# Passage en paramètre de la liste des maps à charger
$data modify storage switch:main copy set from storage switch:maps choose_from.$(id)

# Suppression de la map chargée de la liste des maps à charger
function switch:maps/storage_map_list/remove_from_storage

# Application de la nouvelle liste des maps à charger
$data modify storage switch:maps choose_from.$(id) set from storage switch:main new

