
# Add a temporary tag to the owner of the block that killed the kart
execute as @n[type=marker,tag=switch.moutron_marker] run function switch:modes/moutron/tag_owner/as_nearest_marker

# Dismount passengers and kill them
execute on passengers run function switch:modes/moutron/death

# Remove the temporary tag
tag @a[tag=switch.moutron_killer] remove switch.moutron_killer

# Kill the sheep
tp @s 0 -10000 0
kill @s

