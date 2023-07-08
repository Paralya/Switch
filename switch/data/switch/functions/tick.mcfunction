
## Timer and tick related
scoreboard players add #tick switch.data 1
execute as @a[sort=random] at @s run function switch:player/tick
execute if score #tick switch.data matches 20.. run function switch:second

# Engine : games ticks, start, stop
execute if score #state switch.data matches 3 run function #switch:signals/tick
execute if score #state switch.data matches 0 if entity @a run function switch:engine/start
execute unless score #state switch.data matches 0 unless entity @a run function switch:engine/stop

# Cut Clean support
execute if score #cut_clean switch.data matches 1 as @e[type=item,tag=!switch.item.checked] run function switch:cut_clean

# Kill players out of the map
execute if score #state switch.data matches 3 as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~-1 ~ barrier if block ~ ~-2 ~ #switch:out_of_map run function switch:player/kill_out_of_map

# Right click reset
scoreboard players reset @a switch.right_click

## Profiling
#function switch:profiling/start


gamerule maxCommandChainLength 65536
