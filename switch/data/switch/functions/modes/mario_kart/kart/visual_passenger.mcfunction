
##Conditions if the vehicle have a passenger
scoreboard players set #have_passenger switch.data 0
execute store success score #have_passenger switch.data if entity @a[predicate=switch:has_vehicle_with_tag]
execute if score #have_passenger switch.data matches 0 if entity @a[distance=..5] run data modify entity @s Saddle set value 1b
execute if score #have_passenger switch.data matches 0 run effect give @s slowness 1 255 true
execute if score #have_passenger switch.data matches 1 run data modify entity @s Saddle set value 0b
execute if score #have_passenger switch.data matches 1 run effect clear @s slowness

