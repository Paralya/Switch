
#> switch:modes/one_shot/death
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:modes/one_shot/joined
#			string in switch:modes/one_shot/tick
#

execute unless score @s switch.alive matches 1.. run scoreboard players add @s switch.stats.deaths 1
gamemode adventure @s[gamemode=!adventure]
function switch:modes/one_shot/respawn/main

