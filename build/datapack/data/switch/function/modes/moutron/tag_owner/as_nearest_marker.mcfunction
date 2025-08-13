
#> switch:modes/moutron/tag_owner/as_nearest_marker
#
# @executed	as @n[type=marker,tag=switch.moutron_marker]
#
# @within	switch:modes/moutron/kill_kart [ as @n[type=marker,tag=switch.moutron_marker] ]
#

# Retrieve owner UUID
data modify storage switch:temp Owner set from entity @s data.Owner

# For each player, we compare if they are the owner
execute as @a run function switch:modes/moutron/tag_owner/as_player

