
## Vérification de la liste des maps
# Détection du nombre restant de maps à charger
scoreboard players set #mc switch.data 0
execute store result score #mc switch.data run data get storage switch:main thunder_spear_maps

# Si il n'y a plus de maps à charger, ajouter les maps à la liste des maps à charger
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "traitor_original"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "spectre_original"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "mushroom_plains"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "warden_forest"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "friends_pvpbox_ice"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "friends_pvpbox_hills"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "friends_pvpbox_end"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "baby_park"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "bowser_castle"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "snow_travel"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "jayl_dark_forest"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "operation_pigclaw"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "dark_forest_hills"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "paralya_lobby_noel"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "abandoned_city"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "vilarles_castillo"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "zonweeb_highschool"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "find_the_shulker"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "scartmania"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "colliseum"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "blindtest"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "kart_racer_relai"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "find_the_wool"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "giant_zoo"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "hider_mansion"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "nuketown"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "sky_island_tower"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "sprucy_village"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "survival_boat"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "lava_castle"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "spruce_dojo"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "highland_mansion"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "sakura_house"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "red_temple"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "nature_house"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "japanese_village"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "snowy_village"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "werewolf_village"
execute if score #mc switch.data matches 0 run data modify storage switch:main thunder_spear_maps append value "wyvern_towers"



## Chargement de la map
# Passage en paramètre de la liste des maps à charger
data modify storage switch:main maps_to_choose set from storage switch:main thunder_spear_maps

# Fonction de chargement de la map
function switch:maps/load

## Suppression de la map chargée de la liste des maps à charger
# Passage en paramètre de la liste des maps à charger
data modify storage switch:main copy set from storage switch:main thunder_spear_maps

# Suppression de la map chargée de la liste des maps à charger
function switch:maps/storage_map_list/remove_from_storage

# Application de la nouvelle liste des maps à charger
data modify storage switch:main thunder_spear_maps set from storage switch:main new

