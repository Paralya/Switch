
# Last death timer
scoreboard players set @a[scores={switch.death=1..}] switch.last_death 0
scoreboard players set @a[scores={switch.death=1..}] switch.death 0

## Timer and tick related
scoreboard players add #tick switch.data 1
scoreboard players set #players_in_lobby switch.data 0
execute as @a[sort=random] at @s run function switch:player/tick
execute if score #tick switch.data matches 20.. run function switch:second

# Engine : games ticks, start, stop
execute if score #engine_state switch.data matches 3 run function switch:engine/signals/tick
execute if score #engine_state switch.data matches 0 if entity @a[tag=!detached] run function switch:engine/start
execute unless score #engine_state switch.data matches 0 unless entity @a[tag=!detached] run function switch:engine/stop

# Cut Clean support
execute if score #cut_clean switch.data matches 1 as @e[type=item,tag=!switch.cut_clean,nbt={Age:2s}] run function switch:cut_clean

# Cinematic entities
execute if score #cinematic_entities switch.data matches 1.. as @e[type=item_display,tag=switch.cinematic] run function switch:cinematic/entity_tick

# Kill players out of the map
execute if score #engine_state switch.data matches 3 as @a[tag=!detached,gamemode=!spectator,gamemode=!creative] at @s if block ~ ~-1 ~ barrier if block ~ ~-2 ~ #switch:out_of_map run function switch:player/kill_out_of_map
execute if score #engine_state switch.data matches 3 as @a[tag=!detached,gamemode=!spectator,gamemode=!creative] at @s if block ~ ~-1 ~ barrier if block ~ ~ ~ #switch:out_of_map run function switch:player/kill_out_of_map

# Right click reset
scoreboard players reset @a switch.right_click

# Spectral arrow fix in lobby
execute as @e[type=spectral_arrow,x=26,y=80,z=93,distance=..10,nbt=!{pickup:0b}] run data modify entity @s pickup set value 0b

## Profiling
#execute as Stoupy51 run function switch:profiling/start

