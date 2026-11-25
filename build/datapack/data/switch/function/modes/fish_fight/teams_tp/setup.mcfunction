
#> switch:modes/fish_fight/teams_tp/setup
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:modes/fish_fight/start
#

function switch:modes/fish_fight/translations/teams_tp_setup

team add switch.temp.red {"text":"[Red]","color":"#FF3347"}
team add switch.temp.blue {"text":"[Blue]","color":"#2E9BFF"}
team modify switch.temp.red color red
team modify switch.temp.blue color blue
team modify switch.temp.red prefix ["",{"text": "耽","font": "switch:renders","color":"#FFFFFF","shadow_color":0}," "]
team modify switch.temp.blue prefix ["",{"text": "耾","font": "switch:renders","color":"#FFFFFF","shadow_color":0}," "]
team modify switch.temp.red friendlyFire false
team modify switch.temp.blue friendlyFire false
team modify switch.temp.red collisionRule never
team modify switch.temp.blue collisionRule never

scoreboard players set #next_role switch.data 0

