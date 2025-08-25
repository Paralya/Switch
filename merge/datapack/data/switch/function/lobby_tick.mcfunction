
# Prevent entities
kill @e[type=arrow,distance=..200]
kill @e[type=tnt,distance=..200]
kill @e[type=creeper,distance=..200]
kill @e[type=sheep,distance=..200]
kill @e[type=falling_block,distance=..200,nbt={Time:20}]

# Duality Jump (tick)
execute if score #players_in_lobby switch.data matches 1.. run data merge block 20 80 93 {Lock:"jump_duo",Items:[{Count:1b,id:"minecraft:spectral_arrow"}]}
execute if score #players_in_lobby switch.data matches 1.. run data merge block 27 80 90 {Lock:"jump_duo",Items:[{Count:1b,id:"minecraft:spectral_arrow"}]}
execute if score #players_in_lobby switch.data matches 1.. if block 45 87 90 stone_button[powered=true] run setblock 44 86 90 water
execute if score #players_in_lobby switch.data matches 1.. unless block 45 87 90 stone_button[powered=true] run setblock 44 86 90 air

execute if score #players_in_lobby switch.data matches 1.. unless block 27 80 102 light_weighted_pressure_plate[power=1] run setblock 34 79 103 waxed_copper_block
execute if score #players_in_lobby switch.data matches 1.. if block 27 80 102 light_weighted_pressure_plate[power=1] run setblock 34 79 103 redstone_block
execute if score #players_in_lobby switch.data matches 1.. if block 27 80 102 light_weighted_pressure_plate[power=1] run particle minecraft:dust{color:[1,0,0],scale:1} 32 78.5 102 1.8 .01 .01 1 5

# NPCs
execute if score #players_in_lobby switch.data matches 1.. positioned -22 69.8 3 run function switch:npc/ofchara/tick

