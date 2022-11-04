
scoreboard players operation #player_id switch.temp.id = @s switch.temp.id
clear @a[predicate=switch:has_same_temp_id]

function switch:modes/rush_the_point/death/inventory_filter
execute at @s run function switch:modes/rush_the_point/death/inventory_drop

tag @s add switch.processed
tp @s 0 0 0

