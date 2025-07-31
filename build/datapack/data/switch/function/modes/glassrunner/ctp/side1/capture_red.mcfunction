
#> switch:modes/glassrunner/ctp/side1/capture_red
#
# @executed	positioned 3000 128 3000
#
# @within	switch:modes/glassrunner/ctp/side1/red
#

scoreboard players set #glassrunner.ctp.side1.red.timer switch.data 0

scoreboard players add #glassrunner.points.red switch.data 1
scoreboard players add @a[tag=!detached,team=switch.glassrunner.red] switch.glassrunner.money 2
xp add @a[tag=!detached,team=switch.glassrunner.red] 2 levels

execute as @a[tag=!detached,team=switch.glassrunner.red] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.5 2

