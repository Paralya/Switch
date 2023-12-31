


execute if score #process_end switch.data matches 1 as @a[tag=!detached,scores={switch.alive=1..}] at @s run function switch:engine/add_win



execute if score #process_end switch.data matches 1 as @a[tag=!detached,sort=random] run function switch:modes/glassrunner/death
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]

# Obligatoire
execute if score #process_end switch.data matches 100.. run function switch:engine/restart

scoreboard players add #process_end switch.data 1