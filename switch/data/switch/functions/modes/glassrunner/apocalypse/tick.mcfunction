
execute as @a[tag=!switch.detached,gamemode=!spectator] at @s run function switch:modes/glassrunner/apocalypse/tick_player



summon lightning_bolt ~100 ~ ~100
summon lightning_bolt ~-100 ~ ~-100
summon lightning_bolt ~-100 ~ ~100
summon lightning_bolt ~100 ~ ~-100
