
#> switch:modes/simultaneous_jump/define_color
#
# @executed	as @a[tag=!detached,sort=random]
#
# @within	switch:modes/simultaneous_jump/start [ as @a[tag=!detached,sort=random] ]
#

scoreboard players add #position switch.data 1
scoreboard players operation @s switch.temp.color = #position switch.data

