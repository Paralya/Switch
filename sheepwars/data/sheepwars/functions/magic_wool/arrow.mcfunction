
#> sheepwars:magic_wool/arrow
#
# @within			sheepwars:magic_wool/tick
# @executed			as the arrow & at the colored wool marker
#
# @description		Launches a signal (function tag) on the arrow owner (origin) and kill the arrow
#

# Launch a signal on the arrow owner
execute on origin run function #sheepwars:signals/magic_wool_shot

# Kill the arrow
kill @s

