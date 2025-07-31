
#> switch:modes/murder_mystery/throw/as_iris_ray
#
# @executed	as @e[tag=iris.ray] & at @s
#
# @within	switch:modes/murder_mystery/throw/throw [ as @e[tag=iris.ray] & at @s ]
#

function iris:set_coordinates
data modify storage switch:temp destination set from entity @s Pos
kill @s

