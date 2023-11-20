
execute if score #spawn_count switch.data matches 0 in overworld run tp @s 125061 112 125061
execute if score #spawn_count switch.data matches 1 in overworld run tp @s 125061 109 125036 0 0
execute if score #spawn_count switch.data matches 2 in overworld run tp @s 125061 109 125086 180 0
execute if score #spawn_count switch.data matches 3 in overworld run tp @s 125036 109 125061 -90 0
execute if score #spawn_count switch.data matches 4 in overworld run tp @s 125086 109 125061 90 0
execute if score #spawn_count switch.data matches 5 in overworld run tp @s 125061 109 125017 0 0
execute if score #spawn_count switch.data matches 6 in overworld run tp @s 125061 109 125105 180 0
execute if score #spawn_count switch.data matches 7 in overworld run tp @s 125017 109 125061 -90 0
execute if score #spawn_count switch.data matches 8 in overworld run tp @s 125105 109 125061 90 0
execute if score #spawn_count switch.data matches 9 in overworld run tp @s 125031 109 125031 -45 0
execute if score #spawn_count switch.data matches 10 in overworld run tp @s 125091 109 125091 135 0
execute if score #spawn_count switch.data matches 11 in overworld run tp @s 125091 109 125031 45 0
execute if score #spawn_count switch.data matches 12 in overworld run tp @s 125031 109 125091 -135 0

scoreboard players add #spawn_count switch.data 1
execute if score #spawn_count switch.data matches 13 run scoreboard players set #spawn_count switch.data 0

