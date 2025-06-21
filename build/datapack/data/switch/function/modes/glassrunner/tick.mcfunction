
#> switch:modes/glassrunner/tick
#
# @within	switch:modes/glassrunner/calls/tick
#

scoreboard players add #glassrunner_ticks switch.data 1

function switch:utils/on_death_run_function {function:"switch:modes/glassrunner/death/death"}

execute if score #glassrunner.apocalypse switch.data matches 1 run function switch:modes/glassrunner/apocalypse/start
execute if score #glassrunner.apocalypse switch.data matches 1.. run scoreboard players add #glassrunner.apocalypse switch.data 1
execute if score #glassrunner.apocalypse switch.data matches 5 run function switch:modes/glassrunner/apocalypse/tick
execute if score #glassrunner.apocalypse switch.data matches 10 run function switch:modes/glassrunner/apocalypse/tick
execute if score #glassrunner.apocalypse switch.data matches 15 run function switch:modes/glassrunner/apocalypse/tick
execute if score #glassrunner.apocalypse switch.data matches 20 run function switch:modes/glassrunner/apocalypse/tick
execute if score #glassrunner.apocalypse switch.data matches 25 run function switch:modes/glassrunner/apocalypse/tick
execute if score #glassrunner.apocalypse switch.data matches 30 run function switch:modes/glassrunner/apocalypse/tick

execute if score #glassrunner.apocalypse switch.data matches 30.. run function switch:modes/glassrunner/apocalypse/end


execute as @a[tag=!detached] at @s run function switch:modes/glassrunner/tick_player

execute as @e[tag=switch.glassrunner.glass_bridge,distance=..150] at @s run function switch:modes/glassrunner/tick_glass_bridge

execute as @e[type=arrow,nbt={inBlockState:{}},distance=..200] at @s run function switch:modes/glassrunner/arrow_explosion

fill 3003 128 3003 2997 132 2997 air replace #switch:glassrunner/glass

fill 3073 128 3073 3077 131 3077 air replace #switch:glassrunner/glass
fill 2927 128 2927 2923 131 2923 air replace #switch:glassrunner/glass

fill 3074 128 2924 3076 131 2926 air replace #switch:glassrunner/glass
fill 2924 131 3076 2926 128 3074 air replace #switch:glassrunner/glass

execute as @a[predicate=switch:holding_fireball_wand,scores={switch.right_click=1..,switch.glassrunner.money=15..}] at @s run function switch:modes/glassrunner/fireball/use
execute as @e[tag=switch.glassrunner.fireball] at @s run function switch:modes/glassrunner/fireball/explosion

execute as @e[tag=switch.glassrunner.money_maker] at @s run function switch:modes/glassrunner/money_maker/tick
execute as @a[scores={switch.glassrunner.money_maker=60..}] run function switch:modes/glassrunner/money_maker/add_money

# Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute if score #glassrunner_seconds switch.data matches 3600.. if score #process_end switch.data matches 0 run function switch:modes/glassrunner/end/null
execute if score #glassrunner.points.red switch.data >= #glassrunner_point_to_win switch.data if score #process_end switch.data matches 0 run function switch:modes/glassrunner/end/red
execute if score #glassrunner.points.blue switch.data >= #glassrunner_point_to_win switch.data if score #process_end switch.data matches 0 run function switch:modes/glassrunner/end/blue

execute if score #process_end switch.data matches 1.. run function switch:modes/glassrunner/end/process_end

