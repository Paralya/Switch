
# Summon at the marker location
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] positioned ~ 2048 ~ summon sheep run function switch:modes/shoot_da_sheep/on_new_sheep

