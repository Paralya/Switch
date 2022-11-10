
#Timer
	scoreboard players add #tick switch.data 1
	execute as @a[sort=random] at @s run function switch:player/tick
	execute if score #tick switch.data matches 20.. run function switch:second

#Others
	execute if score #state switch.data matches 3 run function #switch:events/tick
	execute if score #state switch.data matches 0 if entity @a run function switch:engine/start
	execute unless entity @a run function switch:engine/stop
	execute if score #cut_clean switch.data matches 1 as @e[type=item,tag=!switch.item.checked] run function switch:cut_clean
	scoreboard players reset @a switch.right_click
	#function switch:profiling/start

