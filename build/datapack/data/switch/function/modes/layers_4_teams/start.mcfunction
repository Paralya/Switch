
#> switch:modes/layers_4_teams/start
#
# @within	switch:modes/layers_4_teams/calls/start
#

effect give @a[tag=!detached] night_vision infinite 255 true
effect give @a[tag=!detached] saturation 15 255 true
effect give @a[tag=!detached] resistance 60 255 true
function switch:utils/set_dynamic_time

## Chargement de la map
function switch:choose_map_for/layers_4_teams
function switch:translations/modes_layers_4_teams_start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 610
scoreboard players set #layers_4_teams_seconds switch.data -10
scoreboard players set #layers_4_teams_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #cut_clean switch.data 1
scoreboard objectives add switch.temp.killed_red teamkill.red
scoreboard objectives add switch.temp.killed_blue teamkill.blue
scoreboard objectives add switch.temp.killed_green teamkill.green
scoreboard objectives add switch.temp.killed_yellow teamkill.yellow
scoreboard objectives setdisplay list switch.health

# Choix des teams + give d'items
team add switch.temp.red {"text":"[Red]","color":"red"}
team add switch.temp.blue {"text":"[Blue]","color":"blue"}
team add switch.temp.green {"text":"[Green]","color":"green"}
team add switch.temp.yellow {"text":"[Yellow]","color":"yellow"}
team modify switch.temp.red color red
team modify switch.temp.blue color blue
team modify switch.temp.green color green
team modify switch.temp.yellow color yellow
team modify switch.temp.red friendlyFire true
team modify switch.temp.blue friendlyFire true
team modify switch.temp.green friendlyFire true
team modify switch.temp.yellow friendlyFire true
team modify switch.temp.red nametagVisibility hideForOtherTeams
team modify switch.temp.blue nametagVisibility hideForOtherTeams
team modify switch.temp.green nametagVisibility hideForOtherTeams
team modify switch.temp.yellow nametagVisibility hideForOtherTeams
scoreboard players set #next_role switch.data 0
scoreboard players set #total switch.temp.killed_red 0
scoreboard players set #total switch.temp.killed_blue 0
scoreboard players set #total switch.temp.killed_green 0
scoreboard players set #total switch.temp.killed_yellow 0
execute as @a[tag=!detached,sort=random] at @s run function switch:modes/layers_4_teams/team_and_give

