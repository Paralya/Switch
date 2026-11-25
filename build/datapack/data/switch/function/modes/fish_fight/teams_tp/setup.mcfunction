
#> switch:modes/fish_fight/teams_tp/setup
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:modes/fish_fight/start
#

function switch:modes/fish_fight/translations/teams_tp_setup

function switch:modes/_common/setup_teams_red_blue {team:"temp"}
team modify switch.temp.red friendlyFire false
team modify switch.temp.blue friendlyFire false
team modify switch.temp.red collisionRule never
team modify switch.temp.blue collisionRule never

scoreboard players set #next_role switch.data 0

