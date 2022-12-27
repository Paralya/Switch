#> iris:find_closest_surface/east/loop
#
# Determines if the ray hits the current surface
#
# @within iris:find_closest_surface/east/main
# @within iris:find_closest_surface/east/loop

# Store all coordinates to scores (List[0] and List[3] should have the same values)
execute store result score $x0 iris run data get storage iris:data List[-1][0]
execute store result score $y0 iris run data get storage iris:data List[-1][1]
execute store result score $z0 iris run data get storage iris:data List[-1][2]
execute store result score $y1 iris run data get storage iris:data List[-1][4]
execute store result score $z1 iris run data get storage iris:data List[-1][5]

# If the current position is already in the plane of the surface, check if it is in the surface
execute if score ${x} iris = $x0 iris if score ${y} iris >= $y0 iris if score ${y} iris <= $y1 iris if score ${z} iris >= $z0 iris if score ${z} iris <= $z1 iris run function iris:find_closest_surface/ray_already_in_surface

# If the current position is before the plane, check if it hits the surface and get the position of that intersection
execute if score ${x} iris > $x0 iris run function iris:find_closest_surface/east/get_distance

# Loop this function
data remove storage iris:data List[-1]
scoreboard players remove $surfaces iris 1
scoreboard players remove $cuboid_id iris 1
execute if score $surfaces iris matches 1.. run function iris:find_closest_surface/east/loop