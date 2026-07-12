
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
data modify storage switch:temp practice_input set value {id:0}
execute store result storage switch:temp practice_input.id int 1 run scoreboard players get @s switch.id
function switch:player/practice/clear_checkpoints_macro with storage switch:temp practice_input

# OFF -> ON
execute if score #was_active switch.data matches 0 run tag @s add switch.practice
execute if score #was_active switch.data matches 0 run playsound block.beacon.activate ambient @s
execute if score #was_active switch.data matches 0 run function switch:player/translations/practice_enabled

# ON -> OFF (teleport back to the start of the jump, so the player can't complete it from where they practiced)
execute if score #was_active switch.data matches 1 run tag @s remove switch.practice
execute if score #was_active switch.data matches 1 run tag @s add switch.lobby_respawn
execute if score #was_active switch.data matches 1 run playsound block.beacon.deactivate ambient @s
execute if score #was_active switch.data matches 1 run function switch:player/translations/practice_disabled

# Re-give the practice items
function switch:player/practice/give_items

