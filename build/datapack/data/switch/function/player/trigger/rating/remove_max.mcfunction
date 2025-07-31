
#> switch:player/trigger/rating/remove_max
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/rating/sort_loop with storage switch:main max
#

$data remove storage switch:ratings all[{index:$(index)}]

