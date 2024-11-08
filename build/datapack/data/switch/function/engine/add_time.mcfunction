
#> switch:engine/add_time
#
# @within	???
#

# Add time & playsound
scoreboard players add #voting_timer switch.data 300
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

# Tellraw & titles
function switch:translations/engine_add_time

