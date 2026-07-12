
#> switch:modes/moutron/summon_marker
#
# @executed	at @s & positioned ~ ~.5 ~
#
# @within	switch:modes/moutron/tick [ at @s & positioned ~ ~.5 ~ ]
#

# Remove jump strength
attribute @s jump_strength base set 0

# Read the kart color and the id of its rider (owner_id = -1 when the kart is empty)
execute store result score #color switch.data run data get entity @s Color
scoreboard players set #owner_id switch.id -1
execute on passengers if entity @s[type=player] run scoreboard players operation #owner_id switch.id = @s switch.id

# Summon marker with sheep color
execute unless entity @e[type=marker,tag=switch.moutron_marker,distance=..0.5] summon marker run function switch:modes/moutron/summoned_marker

