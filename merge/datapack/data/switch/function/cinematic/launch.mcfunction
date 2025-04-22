
## Execute as player at @s
# Pos 1 = current position
# Pos 2 = target position ($(x) $(y) $(z))

# Tag the player and remember it's id
scoreboard players operation #player_id switch.id = @s switch.id
tag @s add switch.temp

# Get the arguments (target position, and time in ticks)
$data modify storage switch:temp target_position set value [(x),(y),(z)]
$scoreboard players set #cinematic_time switch.data $(time)

# Summon the entity that will control the player
$execute summon item_display run function switch:cinematic/setup_entity

# Remove the tag
tag @s remove switch.temp

