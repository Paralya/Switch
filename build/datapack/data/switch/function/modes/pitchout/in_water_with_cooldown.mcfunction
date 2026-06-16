
#> switch:modes/pitchout/in_water_with_cooldown
#
# @executed	as @a[tag=!detached,scores={switch.alive=1..,switch.temp.cooldown=1..},predicate=switch:in_water]
#
# @within	switch:modes/pitchout/tick [ as @a[tag=!detached,scores={switch.alive=1..,switch.temp.cooldown=1..},predicate=switch:in_water] ]
#

# Depending on the map, teleport players back to spawn
execute if data storage switch:main {map:"pitchout_1"} run function switch:modes/pitchout/map_1/teleport_players
execute if data storage switch:main {map:"pitchout_halloween"} run function switch:modes/pitchout/map_halloween/teleport_players

# Message to player
function switch:modes/pitchout/translations/in_water_with_cooldown

