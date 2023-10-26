## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #glassrunner_ticks switch.data 1

execute as @a[tag=!detached,scores={switch.glassrunner.deathCount=1..},x=0,y=69,z=0,distance=..10,sort=random] run function switch:modes/glassrunner/death/death


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

execute as @e[type=arrow,nbt={inGround:1b},distance=..200] at @s run function switch:modes/glassrunner/arrow_explosion

fill 3003 129 3003 2997 132 2997 air replace #switch:glassrunner/glass

fill 3073 129 3073 3077 131 3077 air replace #switch:glassrunner/glass
fill 2927 129 2927 2923 131 2923 air replace #switch:glassrunner/glass

fill 3074 129 2924 3076 131 2926 air replace #switch:glassrunner/glass
fill 2924 131 3076 2926 129 3074 air replace #switch:glassrunner/glass

execute as @a[tag=!detached,predicate=switch:holding_fireball_wand,scores={switch.right_click=1..,switch.glassrunner.money=15..}] at @s run function switch:modes/glassrunner/fireball/use
execute as @e[tag=switch.glassrunner.fireball] at @s run function switch:modes/glassrunner/fireball/explosion

# Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute if score #glassrunner_seconds switch.data matches 3600.. run function switch:modes/glassrunner/end/null
execute if score #glassrunner.points.red switch.data >= #glassrunner_point_to_win switch.data if score #process_end switch.data matches 0 run function switch:modes/glassrunner/end/red
execute if score #glassrunner.points.blue switch.data >= #glassrunner_point_to_win switch.data if score #process_end switch.data matches 0 run function switch:modes/glassrunner/end/blue

# to uncomment
#execute unless entity @a[tag=!detached,team=switch.glassrunner.blue] if score #process_end switch.data matches 0 run function switch:modes/glassrunner/end/red
#execute unless entity @a[tag=!detached,team=switch.glassrunner.red] if score #process_end switch.data matches 0 run function switch:modes/glassrunner/end/blue

execute if score #process_end switch.data matches 1.. run function switch:modes/glassrunner/end/process_end

