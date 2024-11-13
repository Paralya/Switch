
#> switch:maps/storage_map_list/remove_from_storage
#
# @within	switch:utils/choose_map_for
#

data modify storage switch:main new set value []
execute if data storage switch:main copy[0] run function switch:maps/storage_map_list/remove_from_storage_loop
function switch:translations/maps_storage_map_list_remove_from_storage

