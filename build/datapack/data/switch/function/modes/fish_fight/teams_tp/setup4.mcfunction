
#> switch:modes/fish_fight/teams_tp/setup4
#
# @within	???
#

function switch:translations/modes_fish_fight_teams_tp_setup4

team add switch.temp.red {"text":"[Red]","color":"red"}
team add switch.temp.blue {"text":"[Blue]","color":"blue"}
team add switch.temp.yellow {"text":"[Yellow]","color":"yellow"}
team add switch.temp.green {"text":"[Green]","color":"green"}
team modify switch.temp.red color red
team modify switch.temp.blue color blue
team modify switch.temp.yellow color yellow
team modify switch.temp.green color green
team modify switch.temp.red friendlyFire false
team modify switch.temp.blue friendlyFire false
team modify switch.temp.yellow friendlyFire false
team modify switch.temp.green friendlyFire false

scoreboard players set #next_role switch.data 0

