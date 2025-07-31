
#> switch:modes/mlg_a_coudre/define_order
#
# @executed	as @a[tag=!detached,sort=random]
#
# @within	switch:modes/mlg_a_coudre/start [ as @a[tag=!detached,sort=random] ]
#

scoreboard players set @s switch.temp.lives 2
scoreboard players add #position switch.data 1
scoreboard players operation @s switch.temp.order = #position switch.data

