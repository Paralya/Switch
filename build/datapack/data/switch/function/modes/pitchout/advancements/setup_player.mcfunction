
#> switch:modes/pitchout/advancements/setup_player
#
# @executed	as @a[tag=!detached]
#
# @within	switch:modes/pitchout/start [ as @a[tag=!detached] ]
#

data modify storage switch:temp temp set value {id:0,killed_by:[]}
execute store result storage switch:temp temp.id int 1 run scoreboard players get @s switch.id
data modify storage switch:temp pitchout append from storage switch:temp temp
data remove storage switch:temp temp

