
#> switch:modes/infected/secrets/lost_graveyard/_tick
#
# @within	switch:modes/infected/secrets/tick
#

# Items to pickup
execute if score #infected_secret switch.data matches 0..1 unless entity @e[type=item,tag=switch.infected.shovel] run summon item 127026 118 127071 {Tags:["switch.infected.shovel","switch.infected.item"],Item:{id:"minecraft:stone_shovel",count:1,components:{"minecraft:can_break":{blocks:["gravel","sand"]},"minecraft:damage":23,"minecraft:item_name":{"text":"Teuse","italic":false,"color":"light_purple"},"minecraft:lore":[{"text":"Infected","italic":true,"color":"dark_green"}]}}}
execute if score #infected_secret switch.data matches 0..1 unless entity @e[type=item,tag=switch.infected.iron_ingot] run summon item 127084 112 127016 {Tags:["switch.infected.iron_ingot","switch.infected.item"],Item:{id:"minecraft:iron_ingot",count:1,components:{"minecraft:item_name":{"text":"Lingot de fer","italic":false,"color":"light_purple"},"minecraft:lore":[{"text":"Infected","italic":true,"color":"dark_green"}]}}}
execute as @e[tag=switch.infected.item] at @s run function switch:modes/infected/secrets/lost_graveyard/item_tick

## State checks
# Check for zombie kills
execute if score #infected_secret switch.data matches 0..2 positioned 127123 113 127051 as @a[tag=!detached,team=switch.temp.human,distance=..12,scores={switch.temp.secret_kills=1..}] run function switch:modes/infected/secrets/lost_graveyard/next_state

# Check for tnt
execute if score #infected_secret switch.data matches 3 as @p[tag=!detached,team=switch.temp.human,nbt={Inventory:[{id:"minecraft:tnt"}]}] run function switch:modes/infected/secrets/lost_graveyard/next_state

# Check for explosion
execute if score #infected_secret switch.data matches 4 positioned 127131 122 127114 if block ~ ~ ~ air run function switch:modes/infected/secrets/lost_graveyard/next_state

## Tick
# Creeper spawning
execute if score #infected_secret switch.data matches 2.. positioned 127132 113 127051 unless entity @e[type=creeper,distance=..20] run summon creeper

# Reset secret kills
scoreboard players reset @a[tag=!detached] switch.temp.secret_kills

