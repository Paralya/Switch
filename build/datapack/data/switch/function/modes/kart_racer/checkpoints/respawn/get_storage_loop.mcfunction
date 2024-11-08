
#> switch:modes/kart_racer/checkpoints/respawn/get_storage_loop
#
# @within	switch:modes/kart_racer/checkpoints/respawn/classic
#			switch:modes/kart_racer/checkpoints/respawn/get_storage_loop
#

execute store result score #id switch.data run data get storage switch:main copy[0].id
execute unless score #p_id switch.data = #id switch.data run data remove storage switch:main copy[0]
execute unless score #p_id switch.data = #id switch.data if data storage switch:main copy[0] run function switch:modes/kart_racer/checkpoints/respawn/get_storage_loop

