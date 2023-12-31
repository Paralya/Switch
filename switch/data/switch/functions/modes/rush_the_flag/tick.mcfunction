
function switch:modes/rush_the_point/tick_common

# Tick d'un flag
execute as @e[type=item_display,tag=switch.flag,sort=random] at @s positioned ~ ~-2 ~ run function switch:modes/rush_the_flag/flag_tick

# Hotbar when having a flag
execute as @a[tag=switch.has_blue_flag] run function switch:modes/rush_the_flag/flag_hotbar
execute as @a[tag=switch.has_red_flag] run function switch:modes/rush_the_flag/flag_hotbar

# Détection de fin de partie
execute if score #remaining_time switch.data matches 1.. if score #red_points switch.data matches 5.. run scoreboard players set #remaining_time switch.data 0
execute if score #remaining_time switch.data matches 1.. if score #blue_points switch.data matches 5.. run scoreboard players set #remaining_time switch.data 0
execute if score #remaining_time switch.data matches ..0 run function switch:modes/rush_the_flag/process_end

