
#> switch:modes/snowball_painter/define_color
#
# @executed	as @a[tag=!detached,sort=random]
#
# @within	switch:modes/snowball_painter/start [ as @a[tag=!detached,sort=random] ]
#

scoreboard players operation @s switch.temp.color = #position switch.data
scoreboard players add #position switch.data 1

