
#> switch:modes/de_a_coudre/define_order
#
# @executed	as @a[tag=!detached,sort=random]
#
# @within	switch:modes/de_a_coudre/new_round [ as @a[tag=!detached,sort=random] ]
#			switch:modes/de_a_coudre/start [ as @a[tag=!detached,sort=random] ]
#

scoreboard players add #position switch.data 1
scoreboard players operation @s switch.temp.order = #position switch.data

