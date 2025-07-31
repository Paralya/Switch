
#> switch:player/trigger/stats/sort_loop
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/stats/main
#			switch:player/trigger/stats/sort_loop
#

# Search for the highest value
data modify storage switch:main copy set from storage switch:main stats
data modify storage switch:main max set from storage switch:main copy[0]
execute store result score #max switch.data run data get storage switch:main max.count
data remove storage switch:main copy[0]
execute if data storage switch:main copy[0] run function switch:player/trigger/stats/get_max_loop

# Remove the highest value from the stats list and add it to the sorted list
data modify storage switch:temp sorted_stats append from storage switch:main max
function switch:player/trigger/stats/remove_max with storage switch:main max

# Continue loop
execute if data storage switch:main stats[0] run function switch:player/trigger/stats/sort_loop

