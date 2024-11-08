
#> switch:modes/laser_game/right_click
#
# @within	switch:modes/laser_game/tick
#

scoreboard players reset @s switch.right_click
execute if score @s[tag=!global.ignore] switch.temp.cooldown matches 0 run function switch:modes/laser_game/shoot
function switch:translations/modes_laser_game_right_click
playsound block.note_block.snare ambient @s[tag=global.ignore] ~ ~ ~ 1 0.5

