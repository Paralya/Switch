
#> switch:modes/glassrunner/ctp/side2/adding_timer
#
# @within	switch:modes/glassrunner/second
#

execute if entity @s[team=switch.glassrunner.red] run scoreboard players add #glassrunner.ctp.side2.red.timer switch.data 1
execute if entity @s[team=switch.glassrunner.blue] run scoreboard players add #glassrunner.ctp.side2.blue.timer switch.data 1

execute store success score #temp switch.data if entity @s[team=switch.glassrunner.red] if entity @a[tag=!detached,dx=2,dy=3,dz=2,team=switch.glassrunner.blue] run scoreboard players set #glassrunner.ctp.side2.red.timer switch.data 0
execute store success score #temp2 switch.data if entity @s[team=switch.glassrunner.blue] if entity @a[tag=!detached,dx=2,dy=3,dz=2,team=switch.glassrunner.red] run scoreboard players set #glassrunner.ctp.side2.blue.timer switch.data 0

execute if score #temp switch.data matches 1 run fill 3074 127 2926 3076 127 2924 minecraft:white_concrete
execute if score #temp2 switch.data matches 1 run fill 3074 127 2926 3076 127 2924 minecraft:white_concrete

