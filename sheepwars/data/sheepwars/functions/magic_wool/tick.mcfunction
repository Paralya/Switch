
#> sheepwars:magic_wool/tick
#
# @within			sheepwars:tick
# @executed			as & at the colored wool marker
#
# @description		Updates the colored wool depending on the time, and launches a signal if there is an arrow on it.
#

# Particles
particle dust 255 255 255 1 ~.5 ~.5 ~.5 .5 .5 .5 0 10 force

# Update the colored wool every second
scoreboard players add @s sheepwars.data 1
execute if score @s sheepwars.data matches 1 run setblock ~ ~ ~ white_wool
execute if score @s sheepwars.data matches 21 run setblock ~ ~ ~ orange_wool
execute if score @s sheepwars.data matches 41 run setblock ~ ~ ~ magenta_wool
execute if score @s sheepwars.data matches 61 run setblock ~ ~ ~ light_blue_wool
execute if score @s sheepwars.data matches 81 run setblock ~ ~ ~ yellow_wool
execute if score @s sheepwars.data matches 101 run setblock ~ ~ ~ lime_wool
execute if score @s sheepwars.data matches 121 run setblock ~ ~ ~ pink_wool
execute if score @s sheepwars.data matches 141 run setblock ~ ~ ~ gray_wool
execute if score @s sheepwars.data matches 161 run setblock ~ ~ ~ light_gray_wool
execute if score @s sheepwars.data matches 181 run setblock ~ ~ ~ cyan_wool
execute if score @s sheepwars.data matches 201 run setblock ~ ~ ~ purple_wool
execute if score @s sheepwars.data matches 221 run setblock ~ ~ ~ blue_wool
execute if score @s sheepwars.data matches 241 run setblock ~ ~ ~ brown_wool
execute if score @s sheepwars.data matches 261 run setblock ~ ~ ~ green_wool
execute if score @s sheepwars.data matches 281 run setblock ~ ~ ~ red_wool
execute if score @s sheepwars.data matches 301 run setblock ~ ~ ~ black_wool
execute if score @s sheepwars.data matches 320 run scoreboard players set @s sheepwars.data 0

# If there is an arrow on the colored wool, remove the wool and launch a signal
scoreboard players set #success sheepwars.data 0
execute store success score #success sheepwars.data as @e[type=arrow,nbt={inGround:1b},distance=..1.69,limit=1] run function sheepwars:magic_wool/arrow
execute if score #success sheepwars.data matches 1 run setblock ~ ~ ~ air
execute if score #success sheepwars.data matches 1 run kill @s

