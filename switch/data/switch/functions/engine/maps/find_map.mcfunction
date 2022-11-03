
scoreboard players remove #try switch.data 1

summon marker 0 0 0 {Tags:["switch.random"]}
execute as @e[tag=switch.random] run function switch:engine/voting_time/get/random

data modify storage switch:main copy set from storage switch:main maps_to_choose
execute unless score #random switch.data matches 0 run function switch:engine/maps/choose_loop

scoreboard players set #success switch.data 0
data modify storage switch:main temp set from storage switch:main copy[0]
execute store success score #success switch.data run data modify storage switch:main temp set from storage switch:main previous_map

execute if score #try switch.data matches 1.. if score #success switch.data matches 0 run function switch:engine/maps/find_map
