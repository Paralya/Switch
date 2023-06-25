
#> sheepwars:utils/get_player_from_uuid
#
# @within			sheepwars:sheeps/final/explosif
# @executed			as a player
#
# @input storage	sheepwars:main UUID : The player UUID that launched the sheep.
# @output player	Tagged player that launched the sheep.
#
# @description		Compare the player UUID with the one stored in the sheepwars:main storage.
#

# Copy the player UUID
data modify storage sheepwars:main Copy set from storage sheepwars:main UUID

# Check for equality
scoreboard players set #replaced sheepwars.data 0
execute store success score #replaced sheepwars.data run data modify storage sheepwars:main Copy set from entity @s UUID

# If the player UUID matches (not replaced), add a tag to the player
execute if score #replaced sheepwars.data matches 0 run tag @s add sheepwars.owner


