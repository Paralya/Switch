
#> switch:modes/de_a_coudre/joined
#
# @within	switch:modes/de_a_coudre/calls/joined
#

gamemode spectator @s
execute if score #reconnect switch.data matches 0 run scoreboard players add #max switch.data 1
execute if score #reconnect switch.data matches 0 run scoreboard players operation @s switch.temp.color = #max switch.data
execute if score #reconnect switch.data matches 1 run function switch:modes/de_a_coudre/death

