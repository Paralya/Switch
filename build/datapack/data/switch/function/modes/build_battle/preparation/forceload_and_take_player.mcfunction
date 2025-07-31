
#> switch:modes/build_battle/preparation/forceload_and_take_player
#
# @executed	at @s
#
# @within	switch:modes/build_battle/preparation/summon_marker [ at @s ]
#

# Forceload
forceload add ~ ~ ~48 ~48

# Take a random player, teleport him and apply ID
tag @r[scores={switch.temp.id=-1}] add switch.temp
tp @p[tag=switch.temp] ~24 ~8.69 ~24 135 0
scoreboard players operation @p[tag=switch.temp] switch.temp.id = @s switch.temp.id

# Remove temporary tag
tag @p[tag=switch.temp] remove switch.temp

