
scoreboard players add @s switch.temp.cooldown 1

execute if score @s switch.temp.cooldown matches 1 run function switch:modes/murder_uhc/death/for_detective
execute if score @s switch.temp.cooldown matches 160 run function switch:modes/murder_uhc/death/for_global

