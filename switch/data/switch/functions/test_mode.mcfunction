
# Get test mode state
scoreboard players set #engine_state switch.data 0
execute if score #test_mode switch.data matches 1 run scoreboard players set #engine_state switch.data 1

# Test Mode ON
execute if score #engine_state switch.data matches 0 run scoreboard players set #test_mode switch.data 1
execute if score #engine_state switch.data matches 0 run scoreboard players set #can_attach switch.data 0
execute if score #engine_state switch.data matches 0 run tellraw @s {"text":"Test Mode is now ON","color":"green"}

# Test Mode OFF
execute if score #engine_state switch.data matches 1 run scoreboard players set #test_mode switch.data 0
execute if score #engine_state switch.data matches 1 run scoreboard players set #can_attach switch.data 1
execute if score #engine_state switch.data matches 1 run tellraw @s {"text":"Test Mode is now OFF","color":"red"}

