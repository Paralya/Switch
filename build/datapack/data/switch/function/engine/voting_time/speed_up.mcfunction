
#> switch:engine/voting_time/speed_up
#
# @within	switch:engine/voting_time/tick
#

execute as @a[tag=!detached] at @s run playsound entity.villager.celebrate ambient @s
function switch:engine/translations/voting_time_speed_up
scoreboard players set #voting_timer switch.data 99

