
#> switch:modes/capture_the_flag/death/for_global
#
# @within	switch:modes/capture_the_flag/tick
#

scoreboard players operation #player_id switch.id = @s switch.id
clear @a[tag=!detached,predicate=switch:has_same_id]

function switch:modes/capture_the_flag/death/inventory_filter
execute if data entity @s data.Inventory[0] at @s run function switch:modes/capture_the_flag/death/inventory_drop

tag @s add switch.processed
tp @s 0 69 0

