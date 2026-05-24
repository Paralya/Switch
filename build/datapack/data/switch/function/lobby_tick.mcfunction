
#> switch:lobby_tick
#
# @executed	in minecraft:overworld & positioned 0 69 0
#
# @within	switch:tick [ in minecraft:overworld & positioned 0 69 0 ]
#

# Prevent entities
kill @e[type=arrow,distance=..200]
kill @e[type=tnt,distance=..200]
kill @e[type=creeper,distance=..200]
kill @e[type=sheep,distance=..200]
kill @e[type=falling_block,distance=..200,nbt={Time:20}]

# Duality Jump (tick)
execute if score #players_in_lobby switch.data matches 1.. if block 20 79 94 stone_button[powered=true] run summon spectral_arrow 21.00 80.38 93.50 {Motion:[1.5,0.085,0.0],Rotation:[90f,0f],pickup:0b,life:1170s}
execute if score #players_in_lobby switch.data matches 1.. if block 20 79 94 stone_button[powered=true] run setblock 20 79 94 stone_button[face=wall,facing=south,powered=false]
execute if score #players_in_lobby switch.data matches 1.. if block 28 79 90 stone_button[powered=true] run summon spectral_arrow 26.95 80.38 90.50 {Motion:[-1.5,0.093,0.0],Rotation:[-90f,0f],pickup:0b,life:1170s}
execute if score #players_in_lobby switch.data matches 1.. if block 28 79 90 stone_button[powered=true] run setblock 28 79 90 stone_button[face=wall,facing=east,powered=false]
execute if score #players_in_lobby switch.data matches 1.. if block 45 87 90 stone_button[powered=true] run setblock 44 86 90 water
execute if score #players_in_lobby switch.data matches 1.. unless block 45 87 90 stone_button[powered=true] run setblock 44 86 90 air

execute if score #players_in_lobby switch.data matches 1.. unless block 27 80 102 light_weighted_pressure_plate[power=1] run setblock 34 79 103 waxed_copper_block
execute if score #players_in_lobby switch.data matches 1.. if block 27 80 102 light_weighted_pressure_plate[power=1] run setblock 34 79 103 redstone_block
execute if score #players_in_lobby switch.data matches 1.. if block 27 80 102 light_weighted_pressure_plate[power=1] run particle minecraft:dust{color:[1,0,0],scale:1} 32 78.5 102 1.8 .01 .01 1 5

# NPCs
execute if score #players_in_lobby switch.data matches 1.. positioned -22 69.8 3 run function switch:npc/ofchara/tick

