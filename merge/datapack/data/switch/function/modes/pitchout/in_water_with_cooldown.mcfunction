
# Depending on the map, teleport players back to spawn
execute if data storage switch:main {map:"pitchout_1"} run function switch:modes/pitchout/map_1/teleport_players
execute if data storage switch:main {map:"pitchout_halloween"} run function switch:modes/pitchout/map_halloween/teleport_players

# Message to player
function switch:translations/modes_pitchout_in_water_with_cooldown

