
scoreboard players operation #player_id switch.temp.id = @s switch.temp.id
clear @a[predicate=switch:has_same_temp_id]

function switch:modes/spectres_game/death/inventory_filter
execute at @s run function switch:modes/rush_the_point/death/inventory_drop

execute as @a at @s run playsound entity.lightning_bolt.impact ambient @s ~ ~ ~ 1 0.2
tag @s add switch.processed
tp @s 0 0 0

