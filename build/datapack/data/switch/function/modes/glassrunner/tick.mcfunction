
#> switch:modes/glassrunner/tick
#
# @executed	positioned -3750 128 -1750
#
# @within	switch:modes/glassrunner/calls/tick [ positioned -3750 128 -1750 ]
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

# La nuit dure 10 secondes (les éclairs et explosions s'arrêtent après 30 ticks)
execute if score #glassrunner.apocalypse switch.data matches 200.. run function switch:modes/glassrunner/apocalypse/end

execute as @a[tag=!detached] at @s run function switch:modes/glassrunner/tick_player
execute as @e[tag=switch.glassrunner.glass_bridge,distance=..150] at @s run function switch:modes/glassrunner/tick_glass_bridge
execute as @e[type=arrow,nbt={inBlockState:{}},distance=..200] at @s run function switch:modes/glassrunner/arrow_explosion

fill -3747 128 -1747 -3753 132 -1753 air replace #switch:glassrunner/glass

fill -3677 128 -1677 -3673 131 -1673 air replace #switch:glassrunner/glass
fill -3823 128 -1823 -3827 131 -1827 air replace #switch:glassrunner/glass

fill -3676 128 -1826 -3674 131 -1824 air replace #switch:glassrunner/glass
fill -3826 131 -1674 -3824 128 -1676 air replace #switch:glassrunner/glass

execute as @a[predicate=switch:holding_fireball_wand,scores={switch.right_click=1..,switch.glassrunner.money=15..}] at @s run function switch:modes/glassrunner/fireball/use
execute as @e[tag=switch.glassrunner.fireball] at @s run function switch:modes/glassrunner/fireball/explosion

execute as @e[tag=switch.glassrunner.money_maker] at @s run function switch:modes/glassrunner/money_maker/tick
execute as @a[scores={switch.glassrunner.money_maker=60..}] run function switch:modes/glassrunner/money_maker/add_money

# Fin de la partie si le temps est écoulé (l'équipe avec le plus de points gagne), ou qu'une équipe atteint l'objectif
execute if score #remaining_time switch.data matches ..0 if score #process_end switch.data matches 0 run function switch:modes/glassrunner/end/timeout
execute if score #glassrunner.points.red switch.data >= #glassrunner_point_to_win switch.data if score #process_end switch.data matches 0 run function switch:modes/glassrunner/end/red
execute if score #glassrunner.points.blue switch.data >= #glassrunner_point_to_win switch.data if score #process_end switch.data matches 0 run function switch:modes/glassrunner/end/blue

execute if score #process_end switch.data matches 1.. run function switch:modes/glassrunner/end/process_end

