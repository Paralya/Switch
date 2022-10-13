
#Define multiplier depending on engine speed & block stepping on
#Surface : 0 = normal, 1 = fast, 2 = slippery, 3 = slow
#When in air : surface = 0 & multiplier divided by 2
scoreboard players set #surface switch.data 0
execute if entity @s[tag=!switch.in_water] if block ~ ~-.1 ~ #switch:kart_surfaces/fast run scoreboard players set #surface switch.data 1
execute if entity @s[tag=!switch.in_water] if block ~ ~-.1 ~ #switch:kart_surfaces/slippery run scoreboard players set #surface switch.data 2
execute if entity @s[tag=!switch.in_water] if block ~ ~-.1 ~ #switch:kart_surfaces/slow run scoreboard players set #surface switch.data 3

scoreboard players operation #engine switch.data = @s switch.temp.engine
execute if score #surface switch.data matches 0..1 run scoreboard players set #multiplier switch.data 10
execute if score #surface switch.data matches 2 run scoreboard players set #multiplier switch.data 3
execute if score #surface switch.data matches 3 run scoreboard players set #multiplier switch.data 1
execute if score #surface switch.data matches 0 run scoreboard players operation #engine switch.data /= #20 switch.data
execute if score #surface switch.data matches 1 run scoreboard players operation #engine switch.data /= #15 switch.data
execute if score #surface switch.data matches 2 run scoreboard players operation #engine switch.data /= #120 switch.data
execute if score #surface switch.data matches 3 run scoreboard players operation #engine switch.data /= #30 switch.data
scoreboard players operation #multiplier switch.data += #engine switch.data
execute if score #mushroom switch.data matches 1 run scoreboard players operation #multiplier switch.data *= #2 switch.data
execute if score #mushroom switch.data matches 1 run scoreboard players operation @s switch.temp.engine *= #2 switch.data
execute if score #mushroom switch.data matches 1 if score @s switch.temp.engine > @s switch.temp.max_engine run scoreboard players operation @s switch.temp.engine = @s switch.temp.max_engine
execute if block ~ ~-.1 ~ air run scoreboard players operation #multiplier switch.data /= #2 switch.data



##Stop motion when predicted position isn't reached
execute store result score #new_pos_x switch.data run data get entity @s Pos[0] 10000
execute store result score #new_pos_z switch.data run data get entity @s Pos[2] 10000
execute store result score #pos_y switch.data run data get entity @s Pos[1] 10
execute if score #pos_y switch.data = @s switch.temp.old_pos_y run function switch:modes/mario_kart/kart/physics_check_predictions
scoreboard players operation @s switch.temp.old_pos_y = #pos_y switch.data
scoreboard players operation @s switch.temp.predicted_pos_x = #new_pos_x switch.data
scoreboard players operation @s switch.temp.predicted_pos_z = #new_pos_z switch.data



##Calculate new motion : motion = (player_motion * multiplier) + old_motion + booster
#If player_motion is null : motion = old_motion
scoreboard players set #booster switch.data 0
execute if score #booster switch.data matches 0 if block ~ ~-1 ~ magenta_glazed_terracotta[facing=west] run scoreboard players set #booster switch.data 1
execute if score #booster switch.data matches 0 if block ~ ~-1 ~ magenta_glazed_terracotta[facing=east] run scoreboard players set #booster switch.data 2
execute if score #booster switch.data matches 0 if block ~ ~-1 ~ magenta_glazed_terracotta[facing=north] run scoreboard players set #booster switch.data 3
execute if score #booster switch.data matches 0 if block ~ ~-1 ~ magenta_glazed_terracotta[facing=south] run scoreboard players set #booster switch.data 4



##Store calculated motion into storage switch:main Motion[0] & Motion[2]
data modify storage switch:main Motion set value [0.0d, 0.0d, 0.0d]
scoreboard players operation #new_motion_x switch.data = #motion_x switch.data
scoreboard players operation #new_motion_x switch.data *= #multiplier switch.data
scoreboard players operation #new_motion_x switch.data += @s switch.temp.motion_x
scoreboard players operation #new_motion_z switch.data = #motion_z switch.data
scoreboard players operation #new_motion_z switch.data *= #multiplier switch.data
scoreboard players operation #new_motion_z switch.data += @s switch.temp.motion_z
execute unless score #booster switch.data matches 0 run function switch:modes/mario_kart/kart/booster
execute store result storage switch:main Motion[0] double 0.0000001 run scoreboard players get #new_motion_x switch.data
execute store result storage switch:main Motion[2] double 0.0000001 run scoreboard players get #new_motion_z switch.data
scoreboard players set #motion_x switch.data 0
scoreboard players set #motion_z switch.data 0

