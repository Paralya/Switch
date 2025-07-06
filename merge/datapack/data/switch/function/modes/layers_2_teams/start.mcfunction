
effect give @a[tag=!detached] night_vision infinite 255 true
effect give @a[tag=!detached] saturation 15 255 true
effect give @a[tag=!detached] resistance 30 255 true
function switch:utils/set_dynamic_time

## Chargement de la map
function switch:utils/choose_map_for {id:"layers_2_teams", maps:["layers_2_teams"]}

function switch:translations/modes_layers_2_teams_start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 610
scoreboard players set #layers_2_teams_seconds switch.data -10
scoreboard players set #layers_2_teams_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #cut_clean switch.data 1
scoreboard objectives setdisplay list switch.health

# Choix des teams + give d'items
team add switch.temp.red {"text":"[Red]","color":"red"}
team add switch.temp.blue {"text":"[Blue]","color":"blue"}
team modify switch.temp.red color red
team modify switch.temp.blue color blue
team modify switch.temp.red friendlyFire true
team modify switch.temp.blue friendlyFire true
team modify switch.temp.red nametagVisibility hideForOtherTeams
team modify switch.temp.blue nametagVisibility hideForOtherTeams
scoreboard players set #next_role switch.data 0
execute as @a[tag=!detached,sort=random] at @s run function switch:modes/layers_2_teams/team_and_give
gamemode survival @a[tag=!detached]

