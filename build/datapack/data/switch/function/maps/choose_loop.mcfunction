
#> switch:maps/choose_loop
#
# @within	switch:maps/find_map
#			switch:maps/choose_loop
#

data remove storage switch:main copy[0]
scoreboard players remove #random switch.data 1
execute unless score #random switch.data matches 0 run function switch:maps/choose_loop

