
scoreboard players operation #player_id switch.id = @s switch.id
clear @a[tag=!switch.detached,predicate=switch:has_same_id]

function switch:modes/beat_the_kings/death/inventory_filter
execute at @s run function switch:modes/beat_the_kings/death/inventory_drop
execute as @a[tag=!switch.detached] at @s run playsound entity.lightning_bolt.impact ambient @s ~ ~ ~ 1 0.2
kill @s

