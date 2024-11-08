
#> switch:modes/shoot_da_sheep/summon_sheep
#
# @within	switch:modes/shoot_da_sheep/second
#

# Summon at the marker location
execute at @n[type=marker,tag=switch.selected_map] positioned ~ 2048 ~ summon sheep run function switch:modes/shoot_da_sheep/on_new_sheep

