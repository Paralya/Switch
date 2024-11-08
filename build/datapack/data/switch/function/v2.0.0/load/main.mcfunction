
#> switch:v2.0.0/load/main
#
# @within	switch:v2.0.0/load/resolve
#

# Avoiding multiple executions of the same load function
execute unless score #switch.loaded load.status matches 1 run function switch:v2.0.0/load/secondary

