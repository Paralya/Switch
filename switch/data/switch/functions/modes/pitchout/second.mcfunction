
scoreboard players add #pitchout_seconds switch.data 1

execute if score #pitchout_seconds switch.data matches ..-1 run tp @e[type=creeper] 0 -10000 0
execute if score #pitchout_seconds switch.data matches ..-1 run kill @e[type=creeper]

execute if score #pitchout_seconds switch.data matches -3 as @a[tag=!switch.detached] at @s run function switch:modes/pitchout/give_items

