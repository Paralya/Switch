
#> switch:player/username_change/continue_loop
#
# @within	switch:player/username_change/update_advancements_loop
#			switch:player/username_change/update_ratings_loop
#			switch:player/username_change/update_stats_loop
#

data remove storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0] merge from storage switch:temp input

