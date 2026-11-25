
#> switch:modes/_common/setup_teams_red_blue
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:modes/capture_the_flag/start {team:"temp"}
#			switch:modes/fish_fight/teams_tp/setup {team:"temp"}
#			switch:modes/glassrunner/start {team:"glassrunner"}
#			switch:modes/laser_game/start {team:"laser_game"}
#			switch:modes/layers_2_teams/start {team:"temp"}
#			switch:modes/layers_4_teams/start {team:"temp"}
#			switch:modes/protect_the_king/start {team:"temp"}
#			switch:modes/rush_the_point/start_common {team:"rush_the_point"}
#			switch:modes/sheepwars/start {team:"temp"}
#
# @args		team (string)
#

$team add switch.$(team).red {"text":"[Red]","color":"#FF3347"}
$team add switch.$(team).blue {"text":"[Blue]","color":"#2E9BFF"}
$team modify switch.$(team).red color red
$team modify switch.$(team).blue color blue
$team modify switch.$(team).red prefix ["",{"text": "耽","font": "switch:renders","color":"#FFFFFF","shadow_color":0}," "]
$team modify switch.$(team).blue prefix ["",{"text": "耾","font": "switch:renders","color":"#FFFFFF","shadow_color":0}," "]

