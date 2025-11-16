
#> switch:utils/get_random/macro
#
# @within	switch:utils/get_random/main with storage switch:main temp
#
# @args		max (int)
#

$execute store result score #random switch.data run random value 0..$(max)

