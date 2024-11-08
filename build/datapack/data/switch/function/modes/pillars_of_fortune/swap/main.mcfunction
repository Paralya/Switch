
#> switch:modes/pillars_of_fortune/swap/main
#
# @within	switch:modes/pillars_of_fortune/second
#			switch:modes/pillars_of_fortune/swap/main
#

# Swap one player with another
execute as @r[tag=switch.to_swap] at @s run function switch:modes/pillars_of_fortune/swap/player_1

# Recursive call if remaining players to swap
execute if entity @a[tag=switch.to_swap] run function switch:modes/pillars_of_fortune/swap/main

