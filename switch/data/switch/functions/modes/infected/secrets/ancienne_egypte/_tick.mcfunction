
# Items to pickup
execute if score #infected_secret switch.data matches 0..1 unless entity @e[type=item,tag=switch.infected.stick] run summon item 128028 120 128106 {Tags:["switch.infected.stick","switch.infected.item"],Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":"Bâton de torche","italic":false,"color":"light_purple"}',Lore:['{"text":"Infected","italic":true,"color":"dark_green"}']}}}}
execute if score #infected_secret switch.data matches 0..1 unless entity @e[type=item,tag=switch.infected.redstone] run summon item 128010 138 128078 {Tags:["switch.infected.redstone","switch.infected.item"],Item:{id:"minecraft:redstone",Count:1b,tag:{display:{Name:'{"text":"Redstone","italic":false,"color":"light_purple"}',Lore:['{"text":"Infected","italic":true,"color":"dark_green"}']}}}}
execute as @e[tag=switch.infected.item] at @s run function switch:modes/infected/secrets/ancienne_egypte/item_tick

## State checks
# Check jukebox
execute if score #infected_secret switch.data matches 0 positioned 128069 120 128084 if block ~ ~ ~ jukebox[has_record=true] run function switch:modes/infected/secrets/ancienne_egypte/next_state

# Check redstone torch
execute if score #infected_secret switch.data matches 1 positioned 128069 115 128087 if block ~ ~ ~ redstone_torch run function switch:modes/infected/secrets/ancienne_egypte/next_state

# Check for humans finishing the last parkour
execute if score #infected_secret switch.data matches 3.. positioned 128077 110 128046 as @a[tag=!detached,team=switch.temp.human,distance=..4] run function switch:modes/infected/secrets/ancienne_egypte/next_state

