
#> switch:modes/infected/secrets/old_japan_apocalypse/next_state
#
# @executed	positioned 129035 110 129025
#
# @within	switch:modes/infected/secrets/old_japan_apocalypse/_tick [ positioned 129035 110 129025 ]
#			switch:modes/infected/secrets/old_japan_apocalypse/_tick [ positioned 129027 104 129016 ]
#			switch:modes/infected/secrets/old_japan_apocalypse/_tick
#			switch:modes/infected/secrets/old_japan_apocalypse/_tick [ as @p[tag=!detached,team=switch.temp.human,nbt={Inventory:[{id:"minecraft:nether_star"}]}] ]
#			switch:modes/infected/secrets/old_japan_apocalypse/_tick [ positioned 129018 137 129082 ]
#

# Open the bunker door
execute if score #infected_secret switch.data matches 0 run playsound block.iron_door.open ambient @a[tag=!detached] ~ ~ ~ 1 1 1

# Radio dialogue
execute if score #infected_secret switch.data matches 1 positioned 129027 104 129014 run playsound block.fire.extinguish ambient @a[tag=!detached] ~ ~ ~ 1 1 1
execute if score #infected_secret switch.data matches 1 run scoreboard players enable @a[tag=!detached,team=switch.temp.human] switch.temp.radio_trigger
execute if score #infected_secret switch.data matches 1 run scoreboard players set #infected_radio switch.data 1400
execute if score #infected_secret switch.data matches 5 positioned 129027 104 129014 run playsound block.fire.extinguish ambient @a[tag=!detached] ~ ~ ~ 1 1 1
execute if score #infected_secret switch.data matches 7 positioned 129027 104 129014 run playsound block.fire.extinguish ambient @a[tag=!detached] ~ ~ ~ 1 1 1
execute if score #infected_secret switch.data matches 10 positioned 129027 104 129014 run playsound block.fire.extinguish ambient @a[tag=!detached] ~ ~ ~ 1 1 1
execute if score #infected_secret switch.data matches 14 positioned 129027 104 129014 run playsound block.note_block.imitate.zombie ambient @a[tag=!detached] ~ ~ ~ 1 0.75 1

# Humans victory
execute if score #infected_secret switch.data matches 17 unless score #test_mode switch.data matches 1 run advancement grant @a[team=switch.temp.human] only switch:visible/50
execute if score #infected_secret switch.data matches 17 as @a[team=switch.temp.human] run function switch:modes/infected/secrets/check_if_all_secrets
function switch:translations/modes_infected_secrets_old_japan_apocalypse_next_state

# Next state
scoreboard players add #infected_secret switch.data 1

