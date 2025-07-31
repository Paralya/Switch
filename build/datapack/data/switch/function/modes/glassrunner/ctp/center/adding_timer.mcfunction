
#> switch:modes/glassrunner/ctp/center/adding_timer
#
# @executed	positioned 2997 128 2997 & as @a[tag=!detached,dx=5,dy=3,dz=5]
#
# @within	switch:modes/glassrunner/second [ positioned 2997 128 2997 & as @a[tag=!detached,dx=5,dy=3,dz=5] ]
#

execute if entity @s[team=switch.glassrunner.red] run scoreboard players add #glassrunner.ctp.center.red.timer switch.data 1
execute if entity @s[team=switch.glassrunner.blue] run scoreboard players add #glassrunner.ctp.center.blue.timer switch.data 1

execute store success score #temp switch.data if entity @s[team=switch.glassrunner.red] if entity @a[tag=!detached,dx=5,dy=3,dz=5,team=switch.glassrunner.blue] run scoreboard players set #glassrunner.ctp.center.red.timer switch.data 0
execute store success score #temp2 switch.data if entity @s[team=switch.glassrunner.blue] if entity @a[tag=!detached,dx=5,dy=3,dz=5,team=switch.glassrunner.red] run scoreboard players set #glassrunner.ctp.center.blue.timer switch.data 0

execute if score #temp switch.data matches 1 run fill 2997 127 2997 3003 127 3003 minecraft:white_concrete
execute if score #temp2 switch.data matches 1 run fill 2997 127 2997 3003 127 3003 minecraft:white_concrete

