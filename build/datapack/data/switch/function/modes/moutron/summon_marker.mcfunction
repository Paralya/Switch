
#> switch:modes/moutron/summon_marker
#
# @executed	at @s & positioned ~ ~.5 ~
#
# @within	switch:modes/moutron/tick [ at @s & positioned ~ ~.5 ~ ]
#

# Remove jump strength
attribute @s jump_strength base set 0

# Summon marker with sheep color
execute store result score #color switch.data run data get entity @s Color
execute unless entity @e[type=marker,tag=switch.moutron_marker,distance=..0.5] summon marker run function switch:modes/moutron/summoned_marker

