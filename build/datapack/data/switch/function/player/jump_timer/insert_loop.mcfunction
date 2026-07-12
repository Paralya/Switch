
#> switch:player/jump_timer/insert_loop
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/jump_timer/insert
#			switch:player/jump_timer/insert_loop
#

execute store result score #cur_time switch.data run data get storage switch:temp jt_rest[0].time
execute if score #cur_time switch.data > #new_time switch.data run return 1
data modify storage switch:temp jt_new append from storage switch:temp jt_rest[0]
data remove storage switch:temp jt_rest[0]
execute if data storage switch:temp jt_rest[0] run function switch:player/jump_timer/insert_loop

