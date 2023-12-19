
# Items to pickup
execute if score #infected_secret switch.data matches 0 unless entity @e[type=item,tag=switch.infected.stick] run summon item 2007 150 2011 {Tags:["switch.infected.stick","switch.infected.item"],Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":"Bâton de torche","italic":false,"color":"light_purple"}',Lore:['{"text":"Infected","italic":true,"color":"dark_green"}']}}}}
execute if score #infected_secret switch.data matches 0 unless entity @e[type=item,tag=switch.infected.redstone] run summon item 1991 145 2030 {Tags:["switch.infected.redstone","switch.infected.item"],Item:{id:"minecraft:redstone",Count:1b,tag:{display:{Name:'{"text":"Redstone","italic":false,"color":"light_purple"}',Lore:['{"text":"Infected","italic":true,"color":"dark_green"}']}}}}
execute if score #infected_secret switch.data matches 0..2 unless entity @e[type=item,tag=switch.infected.bottle] run summon item 2006 151 2018 {Tags:["switch.infected.bottle","switch.infected.item"],Item:{id:"minecraft:glass_bottle",Count:1b,tag:{display:{Name:'{"text":"Tube à essai","italic":false,"color":"light_purple"}',Lore:['{"text":"Infected","italic":true,"color":"dark_green"}']}}}}
execute as @e[tag=switch.infected.item] at @s run function switch:modes/infected/secrets/area_51/item_tick

## State checks
# Check generator
execute if score #infected_secret switch.data matches 0 positioned 2016 150 1988 unless block ~ ~ ~ air run function switch:modes/infected/secrets/area_51/next_state

# Check blood extraction
execute if score #infected_secret switch.data matches 1 positioned 2011 113 2041 if block ~ ~ ~ lever[powered=true] positioned 2011 112 2043 if block ~ ~ ~ polished_blackstone_button[powered=true] run function switch:modes/infected/secrets/area_51/next_state
execute if score #infected_secret switch.data matches 2 run scoreboard players remove #blood_extraction switch.data 1
execute if score #infected_secret switch.data matches 2 if score #blood_extraction switch.data matches 0 run function switch:modes/infected/secrets/area_51/next_state

# Check blood analysis
execute if score #infected_secret switch.data matches 3 positioned 1980 122 1980 if data block ~ ~ ~ Items[].tag.switch.115 if data block ~-2 ~ ~ Items[].tag.switch.water_bottle if block 1975 122 1979 polished_blackstone_button[powered=true] run function switch:modes/infected/secrets/area_51/next_state
execute if score #infected_secret switch.data matches 3 positioned 1980 122 1980 if data block ~ ~ ~ Items[].tag.switch.water_bottle if data block ~-2 ~ ~ Items[].tag.switch.115 if block 1975 122 1979 polished_blackstone_button[powered=true] run function switch:modes/infected/secrets/area_51/next_state
execute if score #infected_secret switch.data matches 4..8 run scoreboard players remove #element_analysis switch.data 1
execute if score #infected_secret switch.data matches 4 if score #element_analysis switch.data matches 440 run function switch:modes/infected/secrets/area_51/next_state
execute if score #infected_secret switch.data matches 5 if score #element_analysis switch.data matches 240 run function switch:modes/infected/secrets/area_51/next_state
execute if score #infected_secret switch.data matches 6 if score #element_analysis switch.data matches 200 run function switch:modes/infected/secrets/area_51/next_state
execute if score #infected_secret switch.data matches 7 if score #element_analysis switch.data matches 160 run function switch:modes/infected/secrets/area_51/next_state
execute if score #infected_secret switch.data matches 8 if score #element_analysis switch.data matches 0 run function switch:modes/infected/secrets/area_51/next_state

# Check giant zombie killed
execute if score #infected_secret switch.data matches 9 unless entity @e[x=2000,y=123,z=2024,tag=switch.giant,distance=..75] run function switch:modes/infected/secrets/area_51/next_state

## Tick
execute if score #infected_secret switch.data matches 1..7 run effect give @a[tag=!detached] night_vision infinite 255 true

