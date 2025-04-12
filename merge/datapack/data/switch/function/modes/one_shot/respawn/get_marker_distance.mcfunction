
# Calculate the distance to the closest marker (sum of the absolute values of the coordinates difference)
scoreboard players operation #min switch.data = #positive_max switch.data
execute store result score #resp_x switch.data run data get entity @s Pos[0]
execute store result score #resp_y switch.data run data get entity @s Pos[1]
execute store result score #resp_z switch.data run data get entity @s Pos[2]
execute at @s as @n[tag=switch.respawn,distance=0.1..] run function switch:modes/one_shot/respawn/compare_distance

# Remember the minimal distance
scoreboard players operation @s switch.data = #min switch.data

