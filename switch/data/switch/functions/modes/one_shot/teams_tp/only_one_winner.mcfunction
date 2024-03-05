
function switch:translations/modes_one_shot_teams_tp_only_one_winner

playsound entity.zombified_piglin.ambient ambient @s

execute as @a[tag=!detached,scores={switch.alive=1..}] at @s run function switch:engine/add_win

function switch:modes/one_shot/respawn/main

effect give @a[tag=!detached,gamemode=!spectator] slowness 4 5 true
team remove switch.temp.red
team remove switch.temp.blue
scoreboard players set #TEAM_FISH switch.data 0

