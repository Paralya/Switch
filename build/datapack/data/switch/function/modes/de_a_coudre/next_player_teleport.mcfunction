
#> switch:modes/de_a_coudre/next_player_teleport
#
# @within	switch:modes/de_a_coudre/next_player
#			switch:modes/de_a_coudre/start
#

scoreboard players set #success switch.data 1

gamemode adventure @s
scoreboard players set #remaining_time switch.data 300
execute if data storage switch:main {map:"de_a_coudre_1"} run tp @s 29034 162 29023 90 0

