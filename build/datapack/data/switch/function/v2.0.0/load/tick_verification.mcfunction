
#> switch:v2.0.0/load/tick_verification
#
# @within	#minecraft:tick
#

execute if score #switch.major load.status matches 2 if score #switch.minor load.status matches 0 if score #switch.patch load.status matches 0 run function switch:v2.0.0/tick

