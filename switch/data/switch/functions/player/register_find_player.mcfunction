
# Check UUID
execute store success score #not_success permanent_storage.data run data modify storage permanent_storage:main copy[0].UUID set from entity @s UUID

# Continue
data remove storage permanent_storage:main copy[0]
scoreboard players add #potential_id permanent_storage.data 1
execute if score #not_success permanent_storage.data matches 1 if data storage permanent_storage:main copy[0] run function switch:player/register_find_player

