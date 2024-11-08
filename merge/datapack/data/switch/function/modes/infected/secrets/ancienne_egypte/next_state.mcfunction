
# Jukebox
execute if score #infected_secret switch.data matches 0 run playsound block.piston.contract ambient @a[tag=!detached,distance=..10]
execute if score #infected_secret switch.data matches 0 run setblock 128069 119 128085 air

# Redstone torch

# Sacrifice room
execute if score #infected_secret switch.data matches 2 positioned 128054 113 128050 run playsound block.piston.contract ambient @a[tag=!detached] ~ ~ ~ 1 1 1
execute if score #infected_secret switch.data matches 2 run setblock 128054 113 128050 redstone_torch
execute if score #infected_secret switch.data matches 2 run setblock 128057 109 128054 redstone_wall_torch[facing=west]

# End (After secret room): function executed as a player
execute if score #infected_secret switch.data matches 3.. unless score #test_mode switch.data matches 1 run advancement grant @s only switch:visible/51
execute if score #infected_secret switch.data matches 3.. run function switch:modes/infected/secrets/check_if_all_secrets
function switch:translations/modes_infected_secrets_ancienne_egypte_next_state

# Next state
scoreboard players add #infected_secret switch.data 1

