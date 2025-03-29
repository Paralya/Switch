
effect give @a[tag=!detached] resistance 10 255 true
effect give @a[tag=!detached] saturation 10 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] weakness 10 255 true
function switch:utils/set_dynamic_time

## Placement de la map et des joueurs
function switch:modes/capture_the_flag/choose_map_for

execute in switch:game run gamerule doTileDrops false
execute in switch:game run gamerule keepInventory true

scoreboard objectives add switch.temp.chosen_class dummy
scoreboard objectives add switch.temp.sidebar dummy {"text":"Points","color":"yellow"}
scoreboard objectives setdisplay sidebar switch.temp.sidebar
scoreboard objectives setdisplay list switch.health

scoreboard players set #blue_points switch.data 0
scoreboard players set #red_points switch.data 0
scoreboard players set #process_end switch.data 0

function switch:translations/modes_capture_the_flag_start

team add switch.temp.sidebar.5 {"text":"[Sidebar 5]"}
team add switch.temp.sidebar.3 {"text":"[Sidebar 3]"}
team add switch.temp.sidebar.2 {"text":"[Sidebar 2]"}
team add switch.temp.sidebar.1 {"text":"[Sidebar 1]"}
team modify switch.temp.sidebar.5 suffix [{"text":"Objectif : "},{"text":"5","color":"yellow"},{"text":" drapeaux"}]
team modify switch.temp.sidebar.3 suffix [{"text":"Temps restant : "},{"text":"15","color":"yellow"},{"text":"m"},{"text":"00","color":"yellow"},{"text":"s"}]
team modify switch.temp.sidebar.2 suffix [{"text":"Équipe Bleue : ","color":"blue"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.1 suffix [{"text":"Équipe Rouge : ","color":"red"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.2 color blue
team modify switch.temp.sidebar.1 color red
team join switch.temp.sidebar.5 §3
team join switch.temp.sidebar.3 §5
team join switch.temp.sidebar.2 §2
team join switch.temp.sidebar.1 §1
scoreboard players set §5 switch.temp.sidebar 5
scoreboard players set §r switch.temp.sidebar 4
scoreboard players set §3 switch.temp.sidebar 3
scoreboard players set §2 switch.temp.sidebar 2
scoreboard players set §1 switch.temp.sidebar 1

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
execute as @a[tag=!detached,sort=random] at @s run function switch:modes/capture_the_flag/roles/

scoreboard players set #remaining_time switch.data 910
scoreboard players set #capture_the_flag_seconds switch.data -10
scoreboard players set #capture_the_flag_ticks switch.data 0
tag @a remove switch.has_blue_flag
tag @a remove switch.has_red_flag

