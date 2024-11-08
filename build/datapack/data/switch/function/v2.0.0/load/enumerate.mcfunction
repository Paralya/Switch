
#> switch:v2.0.0/load/enumerate
#
# @within	#switch:enumerate
#

# If current major is too low, set it to the current major
execute unless score #switch.major load.status matches 2.. run scoreboard players set #switch.major load.status 2

# If current minor is too low, set it to the current minor (only if major is correct)
execute if score #switch.major load.status matches 2 unless score #switch.minor load.status matches 0.. run scoreboard players set #switch.minor load.status 0

# If current patch is too low, set it to the current patch (only if major and minor are correct)
execute if score #switch.major load.status matches 2 if score #switch.minor load.status matches 0 unless score #switch.patch load.status matches 0.. run scoreboard players set #switch.patch load.status 0

