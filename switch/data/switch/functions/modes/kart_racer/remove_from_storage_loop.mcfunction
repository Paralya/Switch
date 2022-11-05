
data modify storage switch:main temp set from storage switch:main copy[0]
scoreboard players set #success switch.data 1
execute store success score #success switch.data run data modify storage switch:main temp set from storage switch:main map
execute if score #success switch.data matches 1 run data modify storage switch:main new append from storage switch:main copy[0]

data remove storage switch:main copy[0]
execute if data storage switch:main copy[0] run function switch:modes/kart_racer/remove_from_storage_loop


