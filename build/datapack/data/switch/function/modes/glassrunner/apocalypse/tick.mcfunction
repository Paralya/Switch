
#> switch:modes/glassrunner/apocalypse/tick
#
# @executed	positioned 3000 128 3000
#
# @within	switch:modes/glassrunner/tick
#

execute as @a[tag=!detached,gamemode=!spectator] at @s run function switch:modes/glassrunner/apocalypse/tick_player


summon lightning_bolt ~100 ~ ~100
summon lightning_bolt ~-100 ~ ~-100
summon lightning_bolt ~-100 ~ ~100
summon lightning_bolt ~100 ~ ~-100

