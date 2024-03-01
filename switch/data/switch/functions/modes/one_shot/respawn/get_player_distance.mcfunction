
# At every player that is not dead, calculate the minimal distance
scoreboard players set #min switch.data 1000000000
execute store result score #resp_x switch.data run data get entity @s Pos[0]
execute store result score #resp_y switch.data run data get entity @s Pos[1]
execute store result score #resp_z switch.data run data get entity @s Pos[2]
execute as @a[tag=!detached] run function switch:modes/one_shot/respawn/compare_distance

# Remember the minimal distance
scoreboard players operation @s switch.data = #min switch.data

