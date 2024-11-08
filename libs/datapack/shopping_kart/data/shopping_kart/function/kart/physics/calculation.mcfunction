
# Define multiplier depending on engine speed & block stepping on
# Surface : 0 = normal, 1 = fast, 2 = slippery, 3 = slow, 4 = very slow
# When in air : surface = 0
function shopping_kart:kart/physics/get_surface

scoreboard players operation #engine shopping_kart.data = @s shopping_kart.engine
execute if score #surface shopping_kart.data matches 0..1 run scoreboard players set #multiplier shopping_kart.data 10
execute if score #surface shopping_kart.data matches 2 run scoreboard players set #multiplier shopping_kart.data 3
execute if score #surface shopping_kart.data matches 3..4 run scoreboard players set #multiplier shopping_kart.data 1
execute if score #surface shopping_kart.data matches 0 run scoreboard players operation #engine shopping_kart.data /= #20 shopping_kart.data
execute if score #surface shopping_kart.data matches 1 run scoreboard players operation #engine shopping_kart.data /= #15 shopping_kart.data
execute if score #surface shopping_kart.data matches 2 run scoreboard players operation #engine shopping_kart.data /= #120 shopping_kart.data
execute if score #surface shopping_kart.data matches 3 run scoreboard players operation #engine shopping_kart.data /= #30 shopping_kart.data
execute if score #surface shopping_kart.data matches 4 run scoreboard players operation #engine shopping_kart.data /= #60 shopping_kart.data
scoreboard players operation #multiplier shopping_kart.data += #engine shopping_kart.data
execute if score @s shopping_kart.reactor_boost matches 1.. run scoreboard players operation #multiplier shopping_kart.data *= #2 shopping_kart.data


## Stop motion when predicted position isn't reached
execute store result score #new_pos_x shopping_kart.data run data get entity @s Pos[0] 10000
execute store result score #new_pos_z shopping_kart.data run data get entity @s Pos[2] 10000
execute store result score #pos_y shopping_kart.data run data get entity @s Pos[1] 10
execute if score #pos_y shopping_kart.data = @s shopping_kart.old_pos_y run function shopping_kart:kart/physics/check_predictions
scoreboard players operation @s shopping_kart.old_pos_y = #pos_y shopping_kart.data
scoreboard players operation @s shopping_kart.predicted_pos_x = #new_pos_x shopping_kart.data
scoreboard players operation @s shopping_kart.predicted_pos_z = #new_pos_z shopping_kart.data



## Calculate new motion : motion = (player_motion * multiplier) + old_motion + booster
# If player_motion is null : motion = old_motion
scoreboard players set #booster shopping_kart.data 0
execute if score #booster shopping_kart.data matches 0 if block ~ ~-1 ~ magenta_glazed_terracotta[facing=west] run scoreboard players set #booster shopping_kart.data 1
execute if score #booster shopping_kart.data matches 0 if block ~ ~-1 ~ magenta_glazed_terracotta[facing=east] run scoreboard players set #booster shopping_kart.data 2
execute if score #booster shopping_kart.data matches 0 if block ~ ~-1 ~ magenta_glazed_terracotta[facing=north] run scoreboard players set #booster shopping_kart.data 3
execute if score #booster shopping_kart.data matches 0 if block ~ ~-1 ~ magenta_glazed_terracotta[facing=south] run scoreboard players set #booster shopping_kart.data 4


## Store calculated motion into storage shopping_kart:main Motion[0] & Motion[2]
data modify storage shopping_kart:main Motion set value [0.0d, 0.0d, 0.0d]
scoreboard players set #new_motion_x shopping_kart.data 0
scoreboard players set #new_motion_z shopping_kart.data 0
execute unless score @s shopping_kart.engine matches 0 run scoreboard players operation #new_motion_x shopping_kart.data = #motion_x shopping_kart.data
execute unless score @s shopping_kart.engine matches 0 run scoreboard players operation #new_motion_x shopping_kart.data *= #multiplier shopping_kart.data
scoreboard players operation #new_motion_x shopping_kart.data += @s shopping_kart.motion_x
execute unless score @s shopping_kart.engine matches 0 run scoreboard players operation #new_motion_z shopping_kart.data = #motion_z shopping_kart.data
execute unless score @s shopping_kart.engine matches 0 run scoreboard players operation #new_motion_z shopping_kart.data *= #multiplier shopping_kart.data
scoreboard players operation #new_motion_z shopping_kart.data += @s shopping_kart.motion_z
execute unless score #booster shopping_kart.data matches 0 run function shopping_kart:kart/effects/booster
execute store result storage shopping_kart:main Motion[0] double 0.0000001 run scoreboard players get #new_motion_x shopping_kart.data
execute store result storage shopping_kart:main Motion[2] double 0.0000001 run scoreboard players get #new_motion_z shopping_kart.data
scoreboard players set #motion_x shopping_kart.data 0
scoreboard players set #motion_z shopping_kart.data 0

