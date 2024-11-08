
#> switch:v2.0.0/load/resolve
#
# @within	#switch:resolve
#

# If correct version, load the datapack
execute if score #switch.major load.status matches 2 if score #switch.minor load.status matches 0 if score #switch.patch load.status matches 0 run function switch:v2.0.0/load/main

