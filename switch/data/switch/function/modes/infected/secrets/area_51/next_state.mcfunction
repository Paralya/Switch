
# Generator
execute if score #infected_secret switch.data matches 0 run summon lightning_bolt ~ ~-10 ~
execute if score #infected_secret switch.data matches 0 run setblock 2016 154 1989 redstone_block

# Blood extraction
execute if score #infected_secret switch.data matches 1 run playsound block.beacon.power_select ambient @a[tag=!detached]
execute if score #infected_secret switch.data matches 1 run scoreboard players set #blood_extraction switch.data 1200
execute if score #infected_secret switch.data matches 2 run playsound block.brewing_stand.brew ambient @a[tag=!detached]
execute if score #infected_secret switch.data matches 2 run setblock 2011 111 2045 water_cauldron[level=3]

# Element analysis
execute if score #infected_secret switch.data matches 3 run playsound block.conduit.activate ambient @a[tag=!detached]
execute if score #infected_secret switch.data matches 3 run data modify block 1980 122 1980 Items set value []
execute if score #infected_secret switch.data matches 3 run data modify block 1978 122 1980 Items set value []
execute if score #infected_secret switch.data matches 3 run scoreboard players set #element_analysis switch.data 600
execute if score #infected_secret switch.data matches 4 run playsound entity.zombie.attack_wooden_door ambient @a[tag=!detached]
execute if score #infected_secret switch.data matches 5 run playsound entity.zombie.attack_wooden_door ambient @a[tag=!detached]
execute if score #infected_secret switch.data matches 6 run playsound entity.zombie.attack_wooden_door ambient @a[tag=!detached]
execute if score #infected_secret switch.data matches 7 run playsound entity.zombie.break_wooden_door ambient @a[tag=!detached]
execute if score #infected_secret switch.data matches 7 run summon tnt 1967 127 1983
execute if score #infected_secret switch.data matches 7 run effect clear @a[tag=!detached] night_vision
execute if score #infected_secret switch.data matches 7 run effect give @a[tag=!detached] darkness 3 0 true
execute if score #infected_secret switch.data matches 7 run fill 2003 108 2037 1997 116 2044 air destroy
execute if score #infected_secret switch.data matches 7 as @a[tag=!detached] at @s run playsound block.beacon.deactivate ambient @s
execute if score #infected_secret switch.data matches 8 as @e[tag=switch.giant] run data merge entity @s {NoAI:0b,Invulnerable:0b}
execute if score #infected_secret switch.data matches 8 at @e[limit=24] at @e[tag=switch.giant] run summon zombie ~ ~ ~ {Team:"switch.temp.zombie"}

# End (killed the giant)
execute if score #infected_secret switch.data matches 9 unless score #test_mode switch.data matches 1 run advancement grant @a[team=switch.temp.human] only switch:visible/53
execute if score #infected_secret switch.data matches 9 as @a[team=switch.temp.human] run function switch:modes/infected/secrets/check_if_all_secrets
function switch:translations/modes_infected_secrets_area_51_next_state

# Next state
scoreboard players add #infected_secret switch.data 1

