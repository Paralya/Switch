
#> switch:modes/kart_racer/checkpoints/remember/storage_loop
#
# @within	switch:modes/kart_racer/checkpoints/remember/main
#			switch:modes/kart_racer/checkpoints/remember/storage_loop
#

execute store result score #id switch.data run data get storage switch:main copy[0].id
execute if score @s switch.temp.id = #id switch.data run data modify storage switch:main new append from storage switch:main temp
execute unless score @s switch.temp.id = #id switch.data run data modify storage switch:main new append from storage switch:main copy[0]

data remove storage switch:main copy[0]
execute if data storage switch:main copy[0] run function switch:modes/kart_racer/checkpoints/remember/storage_loop

