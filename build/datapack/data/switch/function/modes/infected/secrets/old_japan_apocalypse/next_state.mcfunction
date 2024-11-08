
#> switch:modes/infected/secrets/old_japan_apocalypse/next_state
#
# @within	switch:modes/infected/secrets/old_japan_apocalypse/_tick
#

# Open the bunker door
execute if score #infected_secret switch.data matches 0 run playsound block.iron_door.open ambient @a[tag=!detached] ~ ~ ~ 1 1 1

# Radio dialogue
execute if score #infected_secret switch.data matches 1 positioned 129027 104 129014 run playsound block.fire.extinguish ambient @a[tag=!detached] ~ ~ ~ 1 1 1
execute if score #infected_secret switch.data matches 1 run scoreboard players set #infected_radio switch.data 1300
execute if score #infected_secret switch.data matches 5 positioned 129027 104 129014 run playsound block.fire.extinguish ambient @a[tag=!detached] ~ ~ ~ 1 1 1
execute if score #infected_secret switch.data matches 7 positioned 129027 104 129014 run playsound block.fire.extinguish ambient @a[tag=!detached] ~ ~ ~ 1 1 1
execute if score #infected_secret switch.data matches 10 positioned 129027 104 129014 run playsound block.fire.extinguish ambient @a[tag=!detached] ~ ~ ~ 1 1 1
execute if score #infected_secret switch.data matches 14 positioned 129027 104 129014 run playsound block.note_block.imitate.zombie ambient @a[tag=!detached] ~ ~ ~ 1 0.75 1

# Got nether star

# Placed beacon

# Humans victory
execute if score #infected_secret switch.data matches 17 unless score #test_mode switch.data matches 1 run advancement grant @a[team=switch.temp.human] only switch:visible/50
execute if score #infected_secret switch.data matches 17 as @a[team=switch.temp.human] run function switch:modes/infected/secrets/check_if_all_secrets
function switch:translations/modes_infected_secrets_old_japan_apocalypse_next_state

# Next state
scoreboard players add #infected_secret switch.data 1

