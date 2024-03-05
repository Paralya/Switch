
# First zombie kill near the hidden meteorite in the volcano
execute if score #infected_secret switch.data matches 0 run playsound entity.experience_orb.pickup ambient @a[tag=!detached,distance=..10] ~ ~ ~ 1 0
execute if score #infected_secret switch.data matches 0 run particle soul ~ ~ ~ 0.35 0.5 0.35 0.02 25

# Fifth zombie killed, open the door and summon creepers and zombies
execute if score #infected_secret switch.data matches 2 run fill 127123 113 127050 127124 115 127052 air destroy
execute if score #infected_secret switch.data matches 2 positioned 127132 113 127051 as @e[limit=2] as @e[limit=2] as @e[limit=2] run summon creeper
execute if score #infected_secret switch.data matches 2 positioned 127132 113 127051 as @e[limit=2] as @e[limit=2] as @e[limit=2] run summon zombie

# Crafted TNT
execute if score #infected_secret switch.data matches 3 run gamerule doTileDrops false

# TNT exploded (end)
execute if score #infected_secret switch.data matches 4 unless score #test_mode switch.data matches 1 run advancement grant @a[team=switch.temp.human] only switch:visible/52
execute if score #infected_secret switch.data matches 4 as @a[team=switch.temp.human] run function switch:modes/infected/secrets/check_if_all_secrets
function switch:translations/modes_infected_secrets_lost_graveyard_next_state
execute if score #infected_secret switch.data matches 4 run kill @e[tag=stardust.nether_stardust_ore]
execute if score #infected_secret switch.data matches 4 run function switch:modes/infected/secrets/drop_element_115

# Next state
scoreboard players add #infected_secret switch.data 1

