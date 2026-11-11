
#> switch:engine/launch_game/intro/rule
#
# @within	switch:engine/launch_game/intro/start 30t append [ scheduled ]
#			switch:engine/launch_game/intro/start 42t append [ scheduled ]
#			switch:engine/launch_game/intro/start 54t append [ scheduled ]
#

execute as @a[tag=!detached] at @s run playsound minecraft:ui.button.click ambient @s ~ ~ ~ 0.5 1.4

