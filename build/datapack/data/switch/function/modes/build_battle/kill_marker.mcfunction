
#> switch:modes/build_battle/kill_marker
#
# @executed	as @e[tag=switch.build_battle_marker] & at @s
#
# @within	switch:modes/build_battle/stop [ as @e[tag=switch.build_battle_marker] & at @s ]
#

# Remove build
execute positioned ~5 ~2 ~5 run fill ~ ~ ~ ~38 ~13 ~38 air
execute positioned ~5 ~2 ~5 run fill ~ ~14 ~ ~38 ~27 ~38 air
fill ~ ~-1 ~ ~ ~-2 ~ air

# Forceload remove & kill marker
forceload remove ~ ~ ~48 ~48
kill @s

