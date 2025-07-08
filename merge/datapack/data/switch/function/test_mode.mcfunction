
# Get test mode state
scoreboard players set #is_enabled switch.data 0
execute if score #test_mode switch.data matches 1 run scoreboard players set #is_enabled switch.data 1

# Test Mode OFF -> ON
execute if score #is_enabled switch.data matches 0 run scoreboard players set #test_mode switch.data 1
execute if score #is_enabled switch.data matches 0 run scoreboard players set #can_attach switch.data 0

# Test Mode OFF -> ON
execute if score #is_enabled switch.data matches 1 run scoreboard players set #test_mode switch.data 0
execute if score #is_enabled switch.data matches 1 run scoreboard players set #can_attach switch.data 1

# Message the player
function switch:translations/test_mode

