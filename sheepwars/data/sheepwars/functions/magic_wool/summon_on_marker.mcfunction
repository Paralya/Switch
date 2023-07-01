
#> sheepwars:magic_wool/summon_on_marker
#
# @within			sheepwars:magic_wool/summon
# @executed			at the middle position of the requested area
#
# @input score		#dx sheepwars.data : The x offset
# @input score		#dy sheepwars.data : The y offset
# @input score		#dz sheepwars.data : The z offset
#
# @description		Get random offsets
#

# Get random offsets by using UUID
execute store result score #rand_x sheepwars.data run data get entity @s UUID[0]
execute store result score #rand_y sheepwars.data run data get entity @s UUID[1]
execute store result score #rand_z sheepwars.data run data get entity @s UUID[2]
scoreboard players operation #rand_x sheepwars.data %= #dx sheepwars.data
scoreboard players operation #rand_y sheepwars.data %= #dy sheepwars.data
scoreboard players operation #rand_z sheepwars.data %= #dz sheepwars.data

# Get current position of the marker
execute store result score #x sheepwars.data run data get entity @s Pos[0]
execute store result score #y sheepwars.data run data get entity @s Pos[1]
execute store result score #z sheepwars.data run data get entity @s Pos[2]

# 50% chance to invert the offsets
scoreboard players set #-1 sheepwars.data -1
execute if predicate sheepwars:random/0.5 run scoreboard players operation #rand_x sheepwars.data *= #-1 sheepwars.data
execute if predicate sheepwars:random/0.5 run scoreboard players operation #rand_y sheepwars.data *= #-1 sheepwars.data
execute if predicate sheepwars:random/0.5 run scoreboard players operation #rand_z sheepwars.data *= #-1 sheepwars.data

# Add the offsets to the current position
scoreboard players operation #x sheepwars.data += #rand_x sheepwars.data
scoreboard players operation #y sheepwars.data += #rand_y sheepwars.data
scoreboard players operation #z sheepwars.data += #rand_z sheepwars.data

# Apply the new position to the marker
execute store result entity @s Pos[0] double 1 run scoreboard players get #x sheepwars.data
execute store result entity @s Pos[1] double 1 run scoreboard players get #y sheepwars.data
execute store result entity @s Pos[2] double 1 run scoreboard players get #z sheepwars.data

# Place the colored wool and a tag to the marker
execute at @s run setblock ~ ~ ~ white_wool
tag @s add sheepwars.magic_wool

