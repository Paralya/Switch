
#> switch:player/practice/particles_loop
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/practice/show_particles with storage switch:temp practice_cps[0]
#			switch:player/practice/particles_loop with storage switch:temp practice_cps[0]
#
# @args		x (unknown)
#			y (unknown)
#			z (unknown)
#

# Show a beam of particles at the checkpoint (only visible by the owner)
$execute positioned $(x) $(y) $(z) run particle end_rod ~ ~1 ~ 0.1 0.5 0.1 0 3 force @s

# Continue loop
data remove storage switch:temp practice_cps[0]
execute if data storage switch:temp practice_cps[0] run function switch:player/practice/particles_loop with storage switch:temp practice_cps[0]

