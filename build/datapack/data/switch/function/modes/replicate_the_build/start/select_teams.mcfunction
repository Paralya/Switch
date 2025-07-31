
#> switch:modes/replicate_the_build/start/select_teams
#
# @executed	as @a[scores={switch.alive=1..},sort=random]
#
# @within	switch:modes/replicate_the_build/round/3 [ as @a[scores={switch.alive=1..},sort=random] ]
#

scoreboard players add #rtbteam switch.data 1

scoreboard players operation @s switch.rtb.id = #rtbteam switch.data

function switch:modes/replicate_the_build/utils/tp_to_island

