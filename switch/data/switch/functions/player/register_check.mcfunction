
## Function that register a player to the player storage to keep their data persistent
## Or update their scores if they are already registered

#define storage permanent_storage:players
#define storage permanent_storage:main
scoreboard objectives add permanent_storage.data dummy
scoreboard objectives add permanent_storage.id dummy

# Remove advancement and set id score
advancement revoke @s only switch:registered
execute store result score @s permanent_storage.id run data get storage permanent_storage:players list
scoreboard players add @s permanent_storage.id 1

# Search for the player in the player storage
scoreboard players set #potential_id permanent_storage.data 1
scoreboard players set #not_success permanent_storage.data 1
data modify storage permanent_storage:main copy set from storage permanent_storage:players list
execute if data storage permanent_storage:main copy[0] run function switch:player/register_find_player

# If the player is not found, register him
execute if score #not_success permanent_storage.data matches 1 run function switch:player/register_register_player

# Else, update his scores and write a message
execute if score #not_success permanent_storage.data matches 0 run function switch:player/register_update_player


