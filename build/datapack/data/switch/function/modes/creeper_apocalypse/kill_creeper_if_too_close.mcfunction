
#> switch:modes/creeper_apocalypse/kill_creeper_if_too_close
#
# @executed	as @e[type=creeper] & at @s
#
# @within	switch:modes/creeper_apocalypse/second [ as @e[type=creeper] & at @s ]
#

# Comptage des creepers à proximité
execute store result score #count switch.data if entity @e[type=creeper,distance=..5]

# Si il y a au moins 20 creepers à proximité, on tue le creeper
execute if score #count switch.data matches 20.. run kill @s

