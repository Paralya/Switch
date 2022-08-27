
effect give @s slow_falling 3 1 true
execute if score #spawn_count switch.data matches 0 in overworld run tp @s 1010 108 1010 135 0
execute if score #spawn_count switch.data matches 1 in overworld run tp @s 990 108 990 -45 0
execute if score #spawn_count switch.data matches 2 in overworld run tp @s 990 108 1010 -135 0
execute if score #spawn_count switch.data matches 3 in overworld run tp @s 1010 108 990 45 0
execute if score #spawn_count switch.data matches 4 in overworld run tp @s 1000 108 1000 0 0
execute if score #spawn_count switch.data matches 5 in overworld run tp @s 1015 108 1000 90 0
execute if score #spawn_count switch.data matches 6 in overworld run tp @s 985 108 1000 -90 0
execute if score #spawn_count switch.data matches 7 in overworld run tp @s 1000 108 1015 180 0
execute if score #spawn_count switch.data matches 8 in overworld run tp @s 1000 108 985 0 0
function switch:modes/pitchout/xp_bar

scoreboard players add #spawn_count switch.data 1
scoreboard players operation #spawn_count switch.data %= #9 switch.data
