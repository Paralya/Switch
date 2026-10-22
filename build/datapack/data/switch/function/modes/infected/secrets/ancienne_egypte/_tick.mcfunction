
#> switch:modes/infected/secrets/ancienne_egypte/_tick
#
# @within	switch:modes/infected/secrets/tick
#

# Items to pickup
execute if score #infected_secret switch.data matches 0..1 unless entity @e[type=item,tag=switch.infected.stick] run summon item 6028 120 10106 {Tags:["switch.infected.stick","switch.infected.item"],Item:{id:"minecraft:stick",count:1,components:{"minecraft:item_name":{"text":"Torch stick","italic":false,"color":"light_purple"},"minecraft:lore":[{"text":"Infected","italic":true,"color":"dark_green"}]}}}
execute if score #infected_secret switch.data matches 0..1 unless entity @e[type=item,tag=switch.infected.redstone] run summon item 6010 138 10078 {Tags:["switch.infected.redstone","switch.infected.item"],Item:{id:"minecraft:redstone",count:1,components:{"minecraft:item_name":{"text":"Redstone","italic":false,"color":"light_purple"},"minecraft:lore":[{"text":"Infected","italic":true,"color":"dark_green"}]}}}
execute as @e[tag=switch.infected.item] at @s run function switch:modes/infected/secrets/ancienne_egypte/item_tick

## State checks
# Check jukebox
execute if score #infected_secret switch.data matches 0 positioned 6069 120 10084 if block ~ ~ ~ jukebox[has_record=true] run function switch:modes/infected/secrets/ancienne_egypte/next_state

# Check redstone torch
execute if score #infected_secret switch.data matches 1 positioned 6069 115 10087 if block ~ ~ ~ redstone_torch run function switch:modes/infected/secrets/ancienne_egypte/next_state

# Check for humans finishing the last parkour
execute if score #infected_secret switch.data matches 3.. positioned 6077 110 10046 as @a[tag=!detached,team=switch.temp.human,distance=..4] run function switch:modes/infected/secrets/ancienne_egypte/next_state

