
#Regenerate map
scoreboard players set #regeneration_ticks switch.data 0
execute if data storage switch:main {map:"traitor_original"} run function switch:engine/maps/survival/traitor_original/regenerate
execute if data storage switch:main {map:"zone_51"} run function switch:engine/maps/survival/zone_51/regenerate
execute if data storage switch:main {map:"spectre_original"} run function switch:engine/maps/survival/spectre_original/regenerate
execute if data storage switch:main {map:"mushroom_plains"} run function switch:engine/maps/survival/mushroom_plains/regenerate
execute if data storage switch:main {map:"enchanting_island"} run function switch:engine/maps/survival/enchanting_island/regenerate
data remove storage switch:main map

