
#> switch:modes/glassrunner/ctp/center/capture_red
#
# @executed	positioned 3000 128 3000
#
# @within	switch:modes/glassrunner/ctp/center/red
#

scoreboard players set #glassrunner.ctp.center.red.timer switch.data 0

scoreboard players add #glassrunner.points.red switch.data 2
scoreboard players add @a[tag=!detached,team=switch.glassrunner.red] switch.glassrunner.money 2
xp add @a[tag=!detached,team=switch.glassrunner.red] 2 levels

execute as @a[tag=!detached,team=switch.glassrunner.red] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.5 2

