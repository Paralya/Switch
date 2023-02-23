
# Regenerate map
scoreboard players set #regeneration_ticks switch.data 0
execute if data storage switch:main {map:"traitor_original"} run function switch:maps/survival/traitor_original/regenerate
execute if data storage switch:main {map:"zone_51"} run function switch:maps/survival/zone_51/regenerate
execute if data storage switch:main {map:"spectre_original"} run function switch:maps/survival/spectre_original/regenerate
execute if data storage switch:main {map:"mushroom_plains"} run function switch:maps/survival/mushroom_plains/regenerate
execute if data storage switch:main {map:"enchanting_island"} run function switch:maps/survival/enchanting_island/regenerate
execute if data storage switch:main {map:"friends_cube_lobby"} run function switch:maps/survival/friends_cube_lobby/regenerate
execute if data storage switch:main {map:"rush_the_point_1"} run function switch:maps/survival/rush_the_point_1/regenerate
execute if data storage switch:main {map:"spleef_1"} run function switch:maps/survival/spleef_1/regenerate
execute if data storage switch:main {map:"de_a_coudre_1"} run function switch:maps/survival/de_a_coudre_1/regenerate
execute if data storage switch:main {map:"mlg_a_coudre_1"} run function switch:maps/survival/mlg_a_coudre_1/regenerate
execute if data storage switch:main {map:"zonweeb_main"} run function switch:maps/survival/zonweeb_main/regenerate
execute if data storage switch:main {map:"jayl_dark_forest"} run function switch:maps/survival/jayl_dark_forest/regenerate
execute if data storage switch:main {map:"dark_forest_hills"} run function switch:maps/survival/dark_forest_hills/regenerate
data remove storage switch:main map

