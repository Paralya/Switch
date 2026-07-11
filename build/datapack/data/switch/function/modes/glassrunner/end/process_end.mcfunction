
#> switch:modes/glassrunner/end/process_end
#
# @executed	positioned 3000 128 3000
#
# @within	switch:modes/glassrunner/tick
#

execute if score #process_end switch.data matches 1 if score #glassrunner.points.red switch.data > #glassrunner.points.blue switch.data as @a[tag=!detached,team=switch.glassrunner.red] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 if score #glassrunner.points.blue switch.data > #glassrunner.points.red switch.data as @a[tag=!detached,team=switch.glassrunner.blue] at @s run function switch:engine/add_win

execute if score #process_end switch.data matches 1 as @a[tag=!detached,sort=random] run function switch:modes/glassrunner/death/death
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 200.. run function switch:engine/restart
scoreboard players add #process_end switch.data 1

