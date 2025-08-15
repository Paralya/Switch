
#> switch:modes/race/give_items
#
# @within	switch:modes/race/start 1s
#

kill @e[type=marker,tag=switch.selected_map]
function switch:maps/load_gamemode
execute as @a[tag=!detached] at @s run function shopping_kart:kart/switch_model/summon_new_kart
execute as @a[tag=!detached] at @s run function switch:modes/race/advancements/inventory_changed_confirm

