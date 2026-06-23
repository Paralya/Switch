
#> switch:modes/_common/death/for_global
#
# @executed	as @e[type=marker,tag=...]
#
# @within	switch:modes/capture_the_flag/death/for_global {filter:"switch:modes/capture_the_flag/death/inventory_filter"}
#			switch:modes/rush_the_point/death/for_global {filter:"switch:modes/rush_the_point/death/inventory_filter"}
#
# @args		filter (string)
#

scoreboard players operation #player_id switch.id = @s switch.id
clear @a[tag=!detached,predicate=switch:has_same_id]

$function $(filter)
execute if data entity @s data.Inventory[0] at @s run function switch:modes/_common/death/inventory_drop

tag @s add switch.processed
tp @s 0 69 0

