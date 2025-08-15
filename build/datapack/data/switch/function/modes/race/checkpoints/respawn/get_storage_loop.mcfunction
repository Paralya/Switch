
#> switch:modes/race/checkpoints/respawn/get_storage_loop
#
# @executed	as @a[tag=!detached,scores={switch.right_click=1..}]
#
# @within	switch:modes/race/checkpoints/respawn/classic
#			switch:modes/race/checkpoints/respawn/get_storage_loop
#

execute store result score #id switch.data run data get storage switch:main copy[0].id
execute unless score #p_id switch.data = #id switch.data run data remove storage switch:main copy[0]
execute unless score #p_id switch.data = #id switch.data if data storage switch:main copy[0] run function switch:modes/race/checkpoints/respawn/get_storage_loop

