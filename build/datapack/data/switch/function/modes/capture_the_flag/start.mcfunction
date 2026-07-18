
#> switch:modes/capture_the_flag/start
#
# @within	switch:modes/capture_the_flag/calls/start
#

function switch:utils/set_dynamic_time

## Placement de la map et des joueurs
function switch:modes/capture_the_flag/choose_map_for

execute in switch:game run gamerule minecraft:block_drops false
execute in switch:game run gamerule minecraft:keep_inventory true

scoreboard objectives add switch.temp.chosen_class dummy
scoreboard objectives add switch.temp.sidebar dummy {"text":"Points","color":"yellow"}
scoreboard objectives setdisplay sidebar switch.temp.sidebar
scoreboard objectives setdisplay list switch.health

scoreboard players set #blue_points switch.data 0
scoreboard players set #red_points switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #red_flag_pickups switch.data 0
scoreboard players set #blue_flag_pickups switch.data 0

function switch:modes/capture_the_flag/translations/start

team add switch.temp.sidebar.5 {"text":"[Sidebar 5]"}
team add switch.temp.sidebar.3 {"text":"[Sidebar 3]"}
team add switch.temp.sidebar.2 {"text":"[Sidebar 2]"}
team add switch.temp.sidebar.1 {"text":"[Sidebar 1]"}
team modify switch.temp.sidebar.5 suffix [{"text":"Goal: "},{"text":"5","color":"yellow"},{"text":" flags"}]
team modify switch.temp.sidebar.3 suffix [{"text":"Time remaining: "},{"text":"15","color":"yellow"},{"text":"m"},{"text":"00","color":"yellow"},{"text":"s"}]
function switch:modes/_common/sidebar_setup

# Choix des rôles + give d'items
team add switch.temp.red {"text":"[Red]","color":"red"}
team add switch.temp.blue {"text":"[Blue]","color":"blue"}
team modify switch.temp.red color red
team modify switch.temp.blue color blue
team modify switch.temp.red nametagVisibility hideForOtherTeams
team modify switch.temp.blue nametagVisibility hideForOtherTeams
team modify switch.temp.red friendlyFire false
team modify switch.temp.blue friendlyFire false
scoreboard players set #next_role switch.data 0
execute as @a[tag=!detached,sort=random] at @s run function switch:modes/capture_the_flag/roles/main

scoreboard players set #remaining_time switch.data 910
scoreboard players set #capture_the_flag_seconds switch.data -1
scoreboard players set #capture_the_flag_ticks switch.data 0
tag @a remove switch.has_blue_flag
tag @a remove switch.has_red_flag

# Spawn effects
effect clear @a[tag=!detached]
effect give @a[tag=!detached] resistance 10 255 true
effect give @a[tag=!detached] saturation 10 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] weakness 10 255 true

