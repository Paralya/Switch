
#> sheepwars:sheeps/tick_sheep
#
# @within			sheepwars:tick
# @executed			as & at the sheep
#
# @description		Manages the sheep actions
#

# If the sheep has the tag in "air", remove it if it is not in the air anymore
execute if entity @s[tag=sheepwars.in_air] store result score #motion_y sheepwars.data run data get entity @s Motion[1] 100
execute if entity @s[tag=sheepwars.in_air] if score #motion_y sheepwars.data matches -8 run tag @s remove sheepwars.in_air

# Increment the sheep timer
scoreboard players add @s[tag=!sheepwars.in_air] sheepwars.data 1

# Manages sheep blinking for sheeps that can explode
execute if score @s[tag=sheepwars.explode] sheepwars.data matches 50.. run function sheepwars:sheeps/blink

# Final action of the sheep (Explosion, fire, disappear, etc.)
execute if score @s sheepwars.data matches 150.. run function sheepwars:sheeps/final_action

# Remove fall damage
data modify entity @s FallDistance set value 0.0

