
#> switch:modes/fish_fight/teams_tp/setup
#
# @within	switch:modes/fish_fight/start
#

function switch:translations/modes_fish_fight_teams_tp_setup

team add switch.temp.red {"text":"[Red]","color":"red"}
team add switch.temp.blue {"text":"[Blue]","color":"blue"}
team modify switch.temp.red color red
team modify switch.temp.blue color blue
team modify switch.temp.red friendlyFire false
team modify switch.temp.blue friendlyFire false

scoreboard players set #next_role switch.data 0

