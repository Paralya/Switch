scoreboard players set #glassrunner.ctp.side1.red.timer switch.data 0

scoreboard players add #glassrunner.points.red switch.data 1
scoreboard players add @a[tag=!switch.detached,team=switch.glassrunner.red] switch.glassrunner.money 5
xp add @a[tag=!switch.detached,team=switch.glassrunner.red] 5 levels


execute as @a[tag=!switch.detached,team=switch.glassrunner.red] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.5 2

