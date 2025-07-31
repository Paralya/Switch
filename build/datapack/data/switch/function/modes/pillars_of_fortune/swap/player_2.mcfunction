
#> switch:modes/pillars_of_fortune/swap/player_2
#
# @executed	as @r[tag=switch.to_swap] & at @s
#
# @within	switch:modes/pillars_of_fortune/swap/player_1 [ as @r[tag=switch.to_swap] & at @s ]
#

# Teleport player 1 to self
tp @p[tag=switch.player_1] ~ ~ ~ ~ ~

# Teleport self to marker and kill it
tp @s @e[tag=switch.swap_marker,limit=1]
kill @e[tag=switch.swap_marker,limit=1]

# Remove to_swap
tag @s remove switch.to_swap

