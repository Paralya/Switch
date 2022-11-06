
data modify storage switch:main new set value []
execute if data storage switch:main copy[0] run function switch:engine/maps/storage_map_list/remove_from_storage_loop

