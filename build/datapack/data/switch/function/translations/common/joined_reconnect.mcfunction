
#> switch:translations/common/joined_reconnect
#
# @within	switch:modes/laser_game/joined
#			switch:modes/rush_the_flag/joined
#			switch:modes/rush_the_point/joined
#			switch:modes/capture_the_flag/joined
#

# French
execute if score #reconnect switch.data matches 1 run tellraw @s[scores={switch.lang=0}] [{"text":"Re ! Tu as fini de rage-quit ?","color":"red"}]

# English
execute if score #reconnect switch.data matches 1 run tellraw @s[scores={switch.lang=1}] [{"text":"Welcome back! Are you done with rage-quit?","color":"red"}]

