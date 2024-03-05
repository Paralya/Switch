
# French
execute if score #engine_state switch.data matches 0 run tellraw @s[scores={switch.lang=0}] {"text":"Test Mode is now ON","color":"green"}
execute if score #engine_state switch.data matches 1 run tellraw @s[scores={switch.lang=0}] {"text":"Test Mode is now OFF","color":"red"}

