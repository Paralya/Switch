
#> switch:player/practice/removed_particles_macro
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/practice/remove_checkpoint with storage switch:temp practice_cp
#
# @args		x (unknown)
#			y (unknown)
#			z (unknown)
#

$execute positioned $(x) $(y) $(z) run particle smoke ~ ~1 ~ 0.2 0.5 0.2 0.01 20 force @s

