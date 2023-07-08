
data modify entity @s Rotation[0] set from storage shopping_kart:main Rotation[0]
execute at @s run tp @s ^ ^ ^1000
execute store result score #motion_x shopping_kart.data run data get entity @s Pos[0] 17.5671456314799
execute store result score #motion_z shopping_kart.data run data get entity @s Pos[2] 17.5671456314799
kill @s

