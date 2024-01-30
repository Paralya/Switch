
# Timer & Manage dropped items
scoreboard players add #capture_the_flag_ticks switch.data 1
execute as @e[type=item,tag=!switch.checked] run function switch:modes/capture_the_flag/items_check

# Class System
execute as @a[scores={switch.temp.choosen_class=0}] run function switch:modes/capture_the_flag/classes/

# Death System
execute as @e[type=player,tag=switch.to_tp] run function switch:modes/capture_the_flag/teleport_to_death
execute as @a[tag=!detached,x=0,y=69,z=0,distance=..10] run function switch:modes/capture_the_flag/death/player
execute if score #remaining_time switch.data matches 1.. as @e[type=marker,tag=switch.temp.player,tag=!switch.player_dead] run function switch:modes/capture_the_flag/death/detect
execute if score #remaining_time switch.data matches 1.. as @e[type=marker,tag=switch.player_dead,tag=!switch.processed] run function switch:modes/capture_the_flag/death/for_global

# Update sidebar & Flag tick
function switch:modes/capture_the_flag/update_sidebar
execute as @e[type=item_display,tag=switch.flag,sort=random] at @s positioned ~ ~ ~ run function switch:modes/capture_the_flag/flag_tick

# Hotbar when having a flag
effect give @a[tag=switch.has_blue_flag] slowness 1 0 true
effect give @a[tag=switch.has_red_flag] slowness 1 0 true

# Détection de fin de partie
execute if score #remaining_time switch.data matches 1.. if score #red_points switch.data matches 5.. run scoreboard players set #remaining_time switch.data 0
execute if score #remaining_time switch.data matches 1.. if score #blue_points switch.data matches 5.. run scoreboard players set #remaining_time switch.data 0
execute if score #remaining_time switch.data matches ..0 run function switch:modes/capture_the_flag/process_end

