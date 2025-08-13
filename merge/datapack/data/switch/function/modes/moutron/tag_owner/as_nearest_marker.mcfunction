
# Retrieve owner UUID
data modify storage switch:temp Owner set from entity @s data.Owner

# For each player, we compare if they are the owner
execute as @a run function switch:modes/moutron/tag_owner/as_player

