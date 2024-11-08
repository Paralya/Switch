
#> switch:modes/mlg_a_coudre/define_order
#
# @within	switch:modes/mlg_a_coudre/start
#

scoreboard players set @s switch.temp.lives 2
scoreboard players add #position switch.data 1
scoreboard players operation @s switch.temp.order = #position switch.data

