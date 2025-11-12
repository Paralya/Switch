
#> switch:player/trigger/stats/remove_max
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/stats/sort_loop with storage switch:main max
#
# @args		name_fr (unknown)
#

$data remove storage switch:main stats[{name_fr:"$(name_fr)"}]

