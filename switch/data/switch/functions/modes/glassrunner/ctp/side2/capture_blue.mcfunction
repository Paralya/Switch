scoreboard players set #glassrunner.ctp.side2.blue.timer switch.data 0

scoreboard players add #glassrunner.points.blue switch.data 1
scoreboard players add @a[team=switch.glassrunner.blue] switch.glassrunner.money 5
xp add @a[team=switch.glassrunner.blue] 5 levels


execute as @a[team=switch.glassrunner.blue] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.5 2

