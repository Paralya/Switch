
#> switch:modes/infected/secrets/area_51/_tick
#
# @within	switch:modes/infected/secrets/tick
#

# Items to pickup
execute if score #infected_secret switch.data matches 0 unless entity @e[type=item,tag=switch.infected.stick] run summon item 2060 151 2074 {Tags:["switch.infected.stick","switch.infected.item"],Item:{id:"minecraft:stick",count:1,components:{"minecraft:item_name":{"text":"Torch stick","italic":false,"color":"light_purple"},"minecraft:lore":[{"text":"Infected","italic":true,"color":"dark_green"}]}}}
execute if score #infected_secret switch.data matches 0 unless entity @e[type=item,tag=switch.infected.redstone] run summon item 2044 146 2093 {Tags:["switch.infected.redstone","switch.infected.item"],Item:{id:"minecraft:redstone",count:1,components:{"minecraft:item_name":{"text":"Redstone","italic":false,"color":"light_purple"},"minecraft:lore":[{"text":"Infected","italic":true,"color":"dark_green"}]}}}
execute if score #infected_secret switch.data matches 0..2 unless entity @e[type=item,tag=switch.infected.bottle] run summon item 2059 152 2081 {Tags:["switch.infected.bottle","switch.infected.item"],Item:{id:"minecraft:glass_bottle",count:1,components:{"minecraft:item_name":{"text":"Test tube","italic":false,"color":"light_purple"},"minecraft:lore":[{"text":"Infected","italic":true,"color":"dark_green"}]}}}
execute as @e[tag=switch.infected.item] at @s run function switch:modes/infected/secrets/area_51/item_tick

## State checks
# Check generator
execute if score #infected_secret switch.data matches 0 positioned 2069 151 2051 unless block ~ ~ ~ air run function switch:modes/infected/secrets/area_51/next_state

# Check blood extraction
execute if score #infected_secret switch.data matches 1 positioned 2064 114 2104 if block ~ ~ ~ lever[powered=true] positioned 2064 113 2106 if block ~ ~ ~ polished_blackstone_button[powered=true] run function switch:modes/infected/secrets/area_51/next_state
execute if score #infected_secret switch.data matches 2 run scoreboard players remove #blood_extraction switch.data 1
execute if score #infected_secret switch.data matches 2 if score #blood_extraction switch.data matches 0 run function switch:modes/infected/secrets/area_51/next_state

# Check blood analysis
execute if score #infected_secret switch.data matches 3 positioned 2033 123 2043 if data block ~ ~ ~ Items[].components."minecraft:custom_data".switch.115 if data block ~-2 ~ ~ Items[].components."minecraft:custom_data".switch.water_bottle if block 2028 123 2042 polished_blackstone_button[powered=true] run function switch:modes/infected/secrets/area_51/next_state
execute if score #infected_secret switch.data matches 3 positioned 2033 123 2043 if data block ~ ~ ~ Items[].components."minecraft:custom_data".switch.water_bottle if data block ~-2 ~ ~ Items[].components."minecraft:custom_data".switch.115 if block 2028 123 2042 polished_blackstone_button[powered=true] run function switch:modes/infected/secrets/area_51/next_state
execute if score #infected_secret switch.data matches 4..8 run scoreboard players remove #element_analysis switch.data 1
execute if score #infected_secret switch.data matches 4 if score #element_analysis switch.data matches 440 run function switch:modes/infected/secrets/area_51/next_state
execute if score #infected_secret switch.data matches 5 if score #element_analysis switch.data matches 240 run function switch:modes/infected/secrets/area_51/next_state
execute if score #infected_secret switch.data matches 6 if score #element_analysis switch.data matches 200 run function switch:modes/infected/secrets/area_51/next_state
execute if score #infected_secret switch.data matches 7 if score #element_analysis switch.data matches 160 run function switch:modes/infected/secrets/area_51/next_state
execute if score #infected_secret switch.data matches 8 if score #element_analysis switch.data matches 0 run function switch:modes/infected/secrets/area_51/next_state

# Check giant zombie killed
execute if score #infected_secret switch.data matches 9 unless entity @e[x=2053,y=124,z=2087,tag=switch.giant,distance=..75] run function switch:modes/infected/secrets/area_51/next_state

## Tick
execute if score #infected_secret switch.data matches 1..7 run effect give @a[tag=!detached] night_vision infinite 255 true

