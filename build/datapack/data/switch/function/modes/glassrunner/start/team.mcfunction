
#> switch:modes/glassrunner/start/team
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/glassrunner/start [ as @a[tag=!detached,sort=random] & at @s ]
#

execute if score #count switch.data matches 0 run team join switch.glassrunner.red @s
execute if score #count switch.data matches 1 run team join switch.glassrunner.blue @s

function switch:modes/glassrunner/death/death

scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #2 switch.data

