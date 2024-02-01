
execute as @a[tag=!detached,gamemode=adventure,distance=3..50] at @s run function switch:modes/memory_mine/death
playsound entity.player.levelup ambient @a[distance=..50] ~ ~ ~ 1 2
particle happy_villager ~ ~ ~ 1 1 1 1 100
kill @s

