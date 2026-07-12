
#> switch:player/practice/toggle
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/practice/check_inventory
#

# Get current state
scoreboard players set #was_active switch.data 0
execute if entity @s[tag=switch.practice] run scoreboard players set #was_active switch.data 1

# Clear the player's checkpoints in both cases
function switch:player/practice/clear_checkpoints

# OFF -> ON
execute if score #was_active switch.data matches 0 run tag @s add switch.practice
execute if score #was_active switch.data matches 0 run playsound block.beacon.activate ambient @s
execute if score #was_active switch.data matches 0 run function switch:player/practice/music_start
execute if score #was_active switch.data matches 0 run function switch:player/translations/practice_enabled

# ON -> OFF (teleport back to the start of the jump, so the player can't complete it from where they practiced)
execute if score #was_active switch.data matches 1 run tag @s remove switch.practice
execute if score #was_active switch.data matches 1 run tag @s add switch.lobby_respawn
execute if score #was_active switch.data matches 1 run playsound block.beacon.deactivate ambient @s
execute if score #was_active switch.data matches 1 run function switch:player/practice/music_stop
execute if score #was_active switch.data matches 1 run function switch:player/translations/practice_disabled

# Re-give the practice items
function switch:player/practice/give_items

