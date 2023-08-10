
# Prevent players from breaking zone
execute if data storage switch:main {map:"build_battle"} run place template switch:build_battle

# Check if player changed ground
execute unless block ~3 ~2 ~3 #switch:build_battle_antiground unless blocks ~3 ~2 ~3 ~3 ~2 ~3 ~3 ~-2 ~3 masked run function switch:modes/build_battle/preparation/change_ground

# While #build_battle_state switch.data < 2, prevent players from going out of the zone
#scoreboard players set #build_battle_state switch.data 0
scoreboard players operation #id switch.temp.id = @s switch.temp.id



