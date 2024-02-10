
execute store result score #x switch.data run data get entity @s Pos[0]
execute store result score #z switch.data run data get entity @s Pos[2]
scoreboard players operation #x switch.data -= @s switch.temp.old_x
scoreboard players operation #z switch.data -= @s switch.temp.old_z
scoreboard players operation #x switch.data /= #2 switch.data
scoreboard players operation #z switch.data /= #2 switch.data
execute if score #x switch.data matches ..-1 run scoreboard players operation @s switch.temp.blocks_run -= #x switch.data
execute if score #x switch.data matches 1.. run scoreboard players operation @s switch.temp.blocks_run += #x switch.data
execute if score #z switch.data matches ..-1 run scoreboard players operation @s switch.temp.blocks_run -= #z switch.data
execute if score #z switch.data matches 1.. run scoreboard players operation @s switch.temp.blocks_run += #z switch.data
execute store result score @s switch.temp.old_x run data get entity @s Pos[0]
execute store result score @s switch.temp.old_z run data get entity @s Pos[2]
execute unless score #test_mode switch.data matches 1 if score @s switch.temp.blocks_run matches 500.. run advancement grant @s only switch:visible/47

