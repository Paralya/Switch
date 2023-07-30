
# Toggle night vision
scoreboard players set #success switch.data 0
execute if data entity @s ActiveEffects[{Id:16}] run scoreboard players set #success switch.data 1
execute if score #success switch.data matches 0 run effect give @s night_vision infinite 255 true
execute if score #success switch.data matches 1 run effect clear @s night_vision

