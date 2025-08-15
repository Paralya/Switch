
function switch:translations/modes_race_restart_game

scoreboard players set #no_force_start_msg switch.data 1
function switch:modes/race/_force_start

execute as @a[tag=!detached] at @s run playsound entity.wither.ambient ambient @s ^ ^ ^20 100

