execute if entity @s[team=switch.glassrunner.red] run scoreboard players add #glassrunner.ctp.side1.red.timer switch.data 1
execute if entity @s[team=switch.glassrunner.blue] run scoreboard players add #glassrunner.ctp.side1.blue.timer switch.data 1

execute store success score #temp switch.data if entity @s[team=switch.glassrunner.red] if entity @a[tag=!detached,dx=2,dy=3,dz=2,team=switch.glassrunner.blue] run scoreboard players set #glassrunner.ctp.side1.red.timer switch.data 0
execute store success score #temp2 switch.data if entity @s[team=switch.glassrunner.blue] if entity @a[tag=!detached,dx=2,dy=3,dz=2,team=switch.glassrunner.red] run scoreboard players set #glassrunner.ctp.side1.blue.timer switch.data 0

execute if score #temp switch.data matches 1 run fill 2926 127 3074 2924 127 3076 minecraft:white_concrete
execute if score #temp2 switch.data matches 1 run fill 2926 127 3074 2924 127 3076 minecraft:white_concrete
