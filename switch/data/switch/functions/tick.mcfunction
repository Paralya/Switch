
# Last death timer
scoreboard players set @a[scores={switch.death=1..}] switch.last_death 0
scoreboard players set @a[scores={switch.death=1..}] switch.death 0

## Timer and tick related
scoreboard players add #tick switch.data 1
execute as @a[sort=random] at @s run function switch:player/tick
execute if score #tick switch.data matches 20.. in overworld run function switch:second

# Engine : games ticks, start, stop
execute if score #engine_state switch.data matches 3 in overworld run function #switch:signals/tick
execute if score #engine_state switch.data matches 0 if entity @a[tag=!detached] in overworld run function switch:engine/start
execute unless score #engine_state switch.data matches 0 unless entity @a[tag=!detached] in overworld run function switch:engine/stop

# Cut Clean support
execute if score #cut_clean switch.data matches 1 as @e[type=item,tag=!switch.item.checked] run function switch:cut_clean

# Kill players out of the map
execute if score #engine_state switch.data matches 3 as @a[tag=!detached,gamemode=!spectator,gamemode=!creative] at @s if block ~ ~-1 ~ barrier if block ~ ~-2 ~ #switch:out_of_map run function switch:player/kill_out_of_map

# Right click reset
scoreboard players reset @a switch.right_click

# Jumps advancements
advancement grant @a[x=-8,y=81,z=-22,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:jump_green
advancement grant @a[x=22,y=88,z=0,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:jump_white
advancement grant @a[x=0,y=81,z=-39,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:jump_blue
advancement grant @a[x=34,y=82,z=47,distance=..1,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_dripstone
advancement grant @a[x=63,y=88,z=10,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_yellow
advancement grant @a[x=-26,y=91,z=15,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:jump_red
advancement grant @a[x=-20,y=75,z=-78,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_brown
advancement grant @a[x=-42,y=94,z=32,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_purple
advancement grant @a[x=-112,y=79,z=-11,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_bricks

## Profiling
#function switch:profiling/start

