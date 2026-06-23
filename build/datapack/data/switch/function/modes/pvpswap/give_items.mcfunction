
#> switch:modes/pvpswap/give_items
#
# @executed	as @a[tag=!detached]
#
# @within	switch:modes/pvpswap/start [ as @a[tag=!detached] ]
#

function switch:modes/_common/pvp_arena/kit

scoreboard players add #initial_count switch.data 1
data modify storage switch:temp temp set value {id:0,hurt:[]}
execute store result storage switch:temp temp.id int 1 run scoreboard players get @s switch.id
data modify storage switch:temp pvpswap append from storage switch:temp temp
data remove storage switch:temp temp

