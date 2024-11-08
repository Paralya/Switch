
#> switch:v2.0.0/tick
#
# @within	switch:v2.0.0/load/tick_verification
#

# Timers
scoreboard players add #tick_2 switch.data 1
scoreboard players add #second switch.data 1
scoreboard players add #second_5 switch.data 1
execute if score #tick_2 switch.data matches 3.. run function switch:v2.0.0/tick_2
execute if score #second switch.data matches 20.. run function switch:v2.0.0/second
execute if score #second_5 switch.data matches 90.. run function switch:v2.0.0/second_5
function switch:tick

