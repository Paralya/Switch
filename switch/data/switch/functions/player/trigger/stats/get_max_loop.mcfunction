
# Get max
execute store result score #temp switch.data run data get storage switch:main copy[0].count
execute if score #temp switch.data > #max switch.data run data modify storage switch:main max set from storage switch:main copy[0]
execute if score #temp switch.data > #max switch.data run scoreboard players operation #max switch.data = #temp switch.data

# Continue loop
data remove storage switch:main copy[0]
execute if data storage switch:main copy[0] run function switch:player/trigger/stats/get_max_loop

