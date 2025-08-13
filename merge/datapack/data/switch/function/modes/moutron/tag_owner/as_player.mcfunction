
# Copy owner UUID
data modify storage switch:temp copy set from storage switch:temp Owner

# If copy replaced, it's not the player
scoreboard players set #success switch.data 1
execute store success score #success switch.data run data modify storage switch:temp copy set from entity @s UUID

# Add temporary tag if it's player (copy not replaced = same data)
execute if score #success switch.data matches 0 run tag @s add switch.moutron_killer

