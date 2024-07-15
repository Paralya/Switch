
function switch:translations/modes_moutron_death
execute if entity @s[gamemode=!spectator] at @s as @p[gamemode=!spectator,distance=0.001..12] run function switch:modes/moutron/adv_kill
execute if entity @s[gamemode=!spectator] run scoreboard players add @s switch.stats.deaths 1

ride @s dismount
execute if entity @s[gamemode=spectator] at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
gamemode spectator @s
effect clear @s
effect give @s night_vision infinite 255 true
clear @s

