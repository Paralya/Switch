

scoreboard players set #distance graplin.math 10


execute facing entity @e[tag=graplin.center,limit=1] eyes run tp @s ~ ~ ~ ~ ~90

execute store result score #angle graplin.math run data get entity @s Rotation[1] 

execute rotated as @s positioned 0.0 0.0 0.0 run function graplin:main/balance2





data modify entity @s Motion set from storage graplin:temp Motion










