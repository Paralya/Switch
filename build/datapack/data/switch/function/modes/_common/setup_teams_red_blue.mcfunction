
#> switch:modes/_common/setup_teams_red_blue
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:modes/layers_2_teams/start
#			switch:modes/sheepwars/start
#

team add switch.temp.red {"text":"[Red]","color":"#FF3347"}
team add switch.temp.blue {"text":"[Blue]","color":"#2E9BFF"}
team modify switch.temp.red color red
team modify switch.temp.blue color blue
team modify switch.temp.red prefix ["",{"text": "耽","font": "switch:renders","color":"#FFFFFF","shadow_color":0}," "]
team modify switch.temp.blue prefix ["",{"text": "耾","font": "switch:renders","color":"#FFFFFF","shadow_color":0}," "]
team modify switch.temp.red friendlyFire true
team modify switch.temp.blue friendlyFire true
team modify switch.temp.red nametagVisibility hideForOtherTeams
team modify switch.temp.blue nametagVisibility hideForOtherTeams
scoreboard players set #next_role switch.data 0

