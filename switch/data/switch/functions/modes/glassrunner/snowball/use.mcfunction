
tag @s add switch.glassrunner.owner
execute as @e[type=minecraft:snowball,distance=..5,tag=!switch.glassrunner.snowball] run function switch:modes/glassrunner/snowball/repart
tag @s remove switch.glassrunner.owner

scoreboard players remove @s switch.glassrunner.use_snowball 1

