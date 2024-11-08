
# Items to pickup
execute if score #infected_secret switch.data matches 0..16 unless entity @e[type=item,tag=switch.infected.pickaxe] run summon item 129014 104 129014 {Tags:["switch.infected.pickaxe","switch.infected.item"],Item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:can_break":{blocks:["obsidian"]},"minecraft:damage":23,"minecraft:item_name":'{"text":"Pioche en diamant","italic":false,"color":"light_purple"}',"minecraft:lore":['{"text":"Infected","italic":true,"color":"dark_green"}']}}}
execute if score #infected_secret switch.data matches 0..16 unless entity @e[type=item,tag=switch.infected.nether_star] run summon item 129018 138 129082 {Tags:["switch.infected.nether_star","switch.infected.item"],Item:{id:"minecraft:nether_star",count:1,components:{"minecraft:item_name":'{"text":"Étoile du nether","italic":false,"color":"light_purple"}',"minecraft:lore":['{"text":"Infected","italic":true,"color":"dark_green"}']}}}
execute if score #infected_secret switch.data matches 0..16 unless entity @e[type=item,tag=switch.infected.glass] run summon item 129035 113 129095 {Tags:["switch.infected.glass","switch.infected.item"],Item:{id:"minecraft:glass",count:5,components:{"minecraft:item_name":'{"text":"Carreau carré","italic":false,"color":"light_purple"}',"minecraft:lore":['{"text":"Infected","italic":true,"color":"dark_green"}']}}}
execute as @e[tag=switch.infected.item] at @s run function switch:modes/infected/secrets/old_japan_apocalypse/item_tick

## State checks
# Check for bunker opening
execute if score #infected_secret switch.data matches 0 positioned 129035 110 129025 if block 129016 104 129021 redstone_block run function switch:modes/infected/secrets/old_japan_apocalypse/next_state

# Check for radio
execute if score #infected_secret switch.data matches 1 positioned 129027 104 129016 if block ~ ~ ~ polished_blackstone_button[powered=true] run function switch:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret switch.data matches 2.. run scoreboard players remove #infected_radio switch.data 1
execute if score #infected_secret switch.data matches 2 if score #infected_radio switch.data matches 1200 run function switch:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret switch.data matches 3 if score #infected_radio switch.data matches 1100 run function switch:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret switch.data matches 4 if score #infected_radio switch.data matches 1000 run function switch:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret switch.data matches 5 if score #infected_radio switch.data matches 900 run function switch:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret switch.data matches 6 if score #infected_radio switch.data matches 800 run function switch:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret switch.data matches 7 if score #infected_radio switch.data matches 700 run function switch:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret switch.data matches 8 if score #infected_radio switch.data matches 600 run function switch:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret switch.data matches 9 if score #infected_radio switch.data matches 500 run function switch:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret switch.data matches 10 if score #infected_radio switch.data matches 400 run function switch:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret switch.data matches 11 if score #infected_radio switch.data matches 300 run function switch:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret switch.data matches 12 if score #infected_radio switch.data matches 200 run function switch:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret switch.data matches 13 if score #infected_radio switch.data matches 100 run function switch:modes/infected/secrets/old_japan_apocalypse/next_state
execute if score #infected_secret switch.data matches 14 if score #infected_radio switch.data matches 0 run function switch:modes/infected/secrets/old_japan_apocalypse/next_state

# Check for nether star
execute if score #infected_secret switch.data matches 15 as @p[tag=!detached,team=switch.temp.human,nbt={Inventory:[{id:"minecraft:nether_star"}]}] run function switch:modes/infected/secrets/old_japan_apocalypse/next_state

# Check for placed beacon
execute if score #infected_secret switch.data matches 16 positioned 129018 137 129082 if block ~ ~ ~ beacon run function switch:modes/infected/secrets/old_japan_apocalypse/next_state

# Check for end game
execute if score #infected_secret switch.data matches 17 if score #remaining_time switch.data matches 0 if entity @a[tag=!detached,team=switch.temp.human] run function switch:modes/infected/secrets/old_japan_apocalypse/next_state

