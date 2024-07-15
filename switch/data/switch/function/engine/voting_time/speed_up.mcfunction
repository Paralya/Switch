
execute as @a[tag=!detached] at @s run playsound entity.villager.celebrate ambient @s
function switch:translations/engine_voting_time_speed_up
scoreboard players set #voting_timer switch.data 99

