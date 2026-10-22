
#> switch:modes/infected/secrets/ancienne_egypte/next_state
#
# @executed	positioned 6069 120 10084
#
# @within	switch:modes/infected/secrets/ancienne_egypte/_tick [ positioned 6069 120 10084 ]
#			switch:modes/infected/secrets/ancienne_egypte/_tick [ positioned 6069 115 10087 ]
#			switch:modes/infected/secrets/ancienne_egypte/_tick [ positioned 6077 110 10046 & as @a[tag=!detached,team=switch.temp.human,distance=..4] ]
#			switch:modes/infected/secrets/ancienne_egypte/button_black
#			switch:modes/infected/secrets/ancienne_egypte/button_red
#

# Jukebox
execute if score #infected_secret switch.data matches 0 run playsound block.piston.contract ambient @a[tag=!detached,distance=..10]
execute if score #infected_secret switch.data matches 0 run setblock 6069 119 10085 air

# Redstone torch

# Sacrifice room
execute if score #infected_secret switch.data matches 2 positioned 6054 113 10050 run playsound block.piston.contract ambient @a[tag=!detached] ~ ~ ~ 1 1 1
execute if score #infected_secret switch.data matches 2 run setblock 6054 113 10050 redstone_torch
execute if score #infected_secret switch.data matches 2 run setblock 6057 109 10054 redstone_wall_torch[facing=west]

# End (After secret room): function executed as a player
execute if score #infected_secret switch.data matches 3.. unless score #test_mode switch.data matches 1 run advancement grant @s only switch:visible/51
execute if score #infected_secret switch.data matches 3.. run function switch:modes/infected/secrets/check_if_all_secrets
function switch:modes/infected/translations/secrets_ancienne_egypte_next_state

# Next state
scoreboard players add #infected_secret switch.data 1

