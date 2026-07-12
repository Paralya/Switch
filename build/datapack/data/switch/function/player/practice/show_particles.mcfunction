
#> switch:player/practice/show_particles
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/practice/tick
#

data modify storage switch:temp practice_input set value {id:0}
execute store result storage switch:temp practice_input.id int 1 run scoreboard players get @s switch.id
data modify storage switch:temp practice_cps set value []
function switch:player/practice/copy_checkpoints_macro with storage switch:temp practice_input
execute if data storage switch:temp practice_cps[0] run function switch:player/practice/particles_loop with storage switch:temp practice_cps[0]

