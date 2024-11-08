
#> switch:modes/one_shot/death
#
# @within	switch:modes/one_shot/joined
#

execute unless score @s switch.alive matches 1.. run scoreboard players add @s switch.stats.deaths 1
gamemode adventure @s[gamemode=!adventure]
function switch:modes/one_shot/respawn/main

