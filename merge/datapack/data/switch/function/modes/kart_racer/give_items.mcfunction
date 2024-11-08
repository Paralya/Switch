
kill @e[type=marker,tag=switch.selected_map]
function switch:maps/load_gamemode
execute as @a[tag=!detached] at @s run function shopping_kart:kart/switch_model/summon_new_kart
execute as @a[tag=!detached] at @s run function switch:modes/kart_racer/advancements/inventory_changed_confirm

