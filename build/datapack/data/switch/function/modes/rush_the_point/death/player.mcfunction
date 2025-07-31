
#> switch:modes/rush_the_point/death/player
#
# @executed	as @a[tag=!detached,sort=random]
#
# @within	switch:modes/rush_the_flag/process_end [ as @a[tag=!detached,sort=random] ]
#			switch:modes/rush_the_point/process_end [ as @a[tag=!detached,sort=random] ]
#

function switch:utils/classic_death
tag @s add switch.to_tp

