
#> switch:translations/modes_laser_game_joined
#
# @within	switch:modes/laser_game/joined
#

# French
execute if score #reconnect switch.data matches 1 run tellraw @s[scores={switch.lang=0}] [{"text":"Re ! Tu as fini de rage-quit ?","color":"red"}]

# English
execute if score #reconnect switch.data matches 1 run tellraw @s[scores={switch.lang=1}] [{"text":"Welcome back! Are you done with rage-quit?","color":"red"}]

