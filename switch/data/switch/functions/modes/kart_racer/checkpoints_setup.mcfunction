
#Apply Checkpoint ID for Respawn
scoreboard players add #next_id switch.temp.id 1
scoreboard players operation @s switch.temp.id = #next_id switch.temp.id

execute store result score @s switch.checkpoint run data get entity @s data.cp
execute store result score @s switch.temp.dy run data get entity @s data.height

#Depending on facing, dx & dz will be switched
execute if data entity @s data.facing store result score @s switch.temp.dx run data get entity @s data.length
execute if data entity @s data.facing store result score @s switch.temp.dz run data get entity @s data.width
execute unless data entity @s data.facing store result score @s switch.temp.dz run data get entity @s data.length
execute unless data entity @s data.facing store result score @s switch.temp.dx run data get entity @s data.width

#Delete nbt data
data modify entity @s data set value {}

