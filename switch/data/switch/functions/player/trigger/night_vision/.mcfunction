
# Toggle night vision
scoreboard players set #success switch.data 0
execute if data entity @s active_effects[{id:"minecraft:night_vision"}] run scoreboard players set #success switch.data 1
execute if score #success switch.data matches 0 run effect give @s night_vision infinite 255 true
execute if score #success switch.data matches 1 run effect clear @s night_vision
scoreboard players set @s switch.trigger.night_vision 0

