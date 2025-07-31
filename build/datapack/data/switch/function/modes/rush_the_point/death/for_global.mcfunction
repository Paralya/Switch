
#> switch:modes/rush_the_point/death/for_global
#
# @executed	as @e[type=marker,tag=...]
#
# @within	switch:modes/rush_the_point/tick_common [ as @e[type=marker,tag=...] ]
#

scoreboard players operation #player_id switch.id = @s switch.id
clear @a[tag=!detached,predicate=switch:has_same_id]

function switch:modes/rush_the_point/death/inventory_filter
execute if data entity @s data.Inventory[0] at @s run function switch:modes/rush_the_point/death/inventory_drop

tag @s add switch.processed
tp @s 0 69 0

