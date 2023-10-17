
scoreboard players operation #player_id switch.temp.id = @s switch.temp.id
clear @a[predicate=switch:has_same_temp_id]

function switch:modes/beat_the_kings/death/inventory_filter
execute at @s run function switch:modes/beat_the_kings/death/inventory_drop

scoreboard players set #success switch.data 0
execute store success score #success switch.data if predicate switch:chance/0.5

execute as @a at @s run playsound entity.lightning_bolt.impact ambient @s ~ ~ ~ 1 0.2
kill @s

