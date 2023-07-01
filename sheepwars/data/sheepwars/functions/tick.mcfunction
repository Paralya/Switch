
#> sheepwars:tick
#
# @within			none
# @executed			unknown context
#
# @description		Function that need to be executed every tick, it handles sheeps, wools, and right click detection.
#

# Make disappear vehicle less "chercheur_rider"
execute as @e[type=husk,tag=sheepwars.chercheur_rider,predicate=!sheepwars:has_vehicle] run function sheepwars:sheeps/final/disappear

# Right click detection
execute as @a[scores={sheepwars.right_click=1..},sort=random] at @s run function sheepwars:right_click/all

# Remove levitation effect if no sheep is nearby
execute as @a[gamemode=!spectator,nbt={ActiveEffects:[{Id:25}]}] at @s unless entity @e[tag=sheepwars.sismique,distance=..6] run effect clear @s

# Sheep management
execute as @e[type=sheep,tag=sheepwars.sheep] at @s run function sheepwars:sheeps/tick_sheep

# Intergalactique markers
execute as @e[type=marker,tag=sheepwars.intergalactique_marker] at @s run function sheepwars:sheeps/active/intergalactique/marker_tick

# Magic wools
execute as @e[type=marker,tag=sheepwars.magic_wool] at @s run function sheepwars:magic_wool/tick


