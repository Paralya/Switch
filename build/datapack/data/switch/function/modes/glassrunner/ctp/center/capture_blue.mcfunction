
#> switch:modes/glassrunner/ctp/center/capture_blue
#
# @within	switch:modes/glassrunner/ctp/center/blue
#

scoreboard players set #glassrunner.ctp.center.blue.timer switch.data 0

scoreboard players add #glassrunner.points.blue switch.data 2
scoreboard players add @a[tag=!detached,team=switch.glassrunner.blue] switch.glassrunner.money 2
xp add @a[tag=!detached,team=switch.glassrunner.blue] 2 levels


execute as @a[tag=!detached,team=switch.glassrunner.blue] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.5 2
