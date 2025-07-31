
#> switch:player/trigger/rating/sort_loop
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/rating/sort
#			switch:player/trigger/rating/sort_loop
#

# Search for the highest value
data modify storage switch:main copy set from storage switch:ratings all
data modify storage switch:main max set from storage switch:main copy[0]
scoreboard players set #max_int switch.data 0
scoreboard players set #max_digits switch.data 0
execute store result score #max_int switch.data run data get storage switch:main max.int
execute store result score #max_digits switch.data run data get storage switch:main max.digits
data remove storage switch:main copy[0]
execute if data storage switch:main copy[0] run function switch:player/trigger/rating/get_max_loop

# Remove the highest value from the stats list and add it to the sorted list
data modify storage switch:temp sorted append from storage switch:main max
function switch:player/trigger/rating/remove_max with storage switch:main max

# Continue loop
execute if data storage switch:ratings all[0] run function switch:player/trigger/rating/sort_loop

