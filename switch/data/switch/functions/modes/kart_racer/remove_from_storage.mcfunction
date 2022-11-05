
data modify storage switch:main new set value []
data modify storage switch:main copy set from storage switch:main kart_racer_maps
execute if data storage switch:main copy[0] run function switch:modes/kart_racer/remove_from_storage_loop
data modify storage switch:main kart_racer_maps set from storage switch:main new

