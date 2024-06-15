
# Teleport player 1 to self
tp @p[tag=switch.player_1] ~ ~ ~ ~ ~

# Teleport self to marker and kill it
tp @s @e[tag=switch.swap_marker,limit=1]
kill @e[tag=switch.swap_marker,limit=1]

# Remove to_swap
tag @s remove switch.to_swap

