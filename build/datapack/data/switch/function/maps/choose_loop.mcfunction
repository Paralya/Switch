
#> switch:maps/choose_loop
#
# @within	switch:maps/choose_loop
#			switch:maps/find_map
#

data remove storage switch:main copy[0]
scoreboard players remove #random switch.data 1
execute unless score #random switch.data matches 0 run function switch:maps/choose_loop

