
#> switch:modes/moutron/death
#
# @within	switch:modes/moutron/joined
#			switch:modes/moutron/kill_kart
#			switch:modes/moutron/process_end [ as @a[tag=!detached] ]
#

function switch:translations/modes_moutron_death
execute if entity @s[gamemode=!spectator] at @s as @p[tag=switch.moutron_killer] run function switch:modes/moutron/adv_kill
execute if entity @s[gamemode=!spectator] run scoreboard players add @s switch.stats.deaths 1

ride @s dismount
execute if entity @s[gamemode=spectator] at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
gamemode spectator @s
effect clear @s
effect give @s night_vision infinite 255 true
clear @s

