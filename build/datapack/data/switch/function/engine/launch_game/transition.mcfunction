
#> switch:engine/launch_game/transition
#
# @within	switch:engine/launch_game/main
#			switch:engine/launch_game/resolve_group
#

# Fade the screen to black (fully black when the game launches)
execute as @a[tag=!detached] run function switch:utils/black_transition

# Launch the game once the screen is black
schedule function switch:engine/launch_game/launch 12t

