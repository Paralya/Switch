
#Define multiplier depending on engine speed & block stepping on
#Surface : 0 = normal, 1 = fast, 2 = slippery, 3 = slow
scoreboard players set #surface switch.data 0
execute if block ~ ~-.1 ~ #switch:kart_surfaces/fast run scoreboard players set #surface switch.data 1
execute if block ~ ~-.1 ~ #switch:kart_surfaces/slippery run scoreboard players set #surface switch.data 2
execute if block ~ ~-.1 ~ #switch:kart_surfaces/slow run scoreboard players set #surface switch.data 3
execute if block ~ ~ ~ cobweb run scoreboard players set #surface switch.data 3
execute if block ~ ~ ~ water run scoreboard players set #surface switch.data 0

execute if score #instant_engine_max switch.data matches 1 run scoreboard players set @s switch.temp.engine 3000
scoreboard players operation #engine switch.data = @s switch.temp.engine
execute if score #surface switch.data matches 0..1 run scoreboard players set #multiplier switch.data 10
execute if score #surface switch.data matches 2 run scoreboard players set #multiplier switch.data 3
execute if score #surface switch.data matches 3 run scoreboard players set #multiplier switch.data 1
execute if score #surface switch.data matches 0 run scoreboard players operation #engine switch.data /= #20 switch.data
execute if score #surface switch.data matches 1 run scoreboard players operation #engine switch.data /= #15 switch.data
execute if score #surface switch.data matches 2 run scoreboard players operation #engine switch.data /= #60 switch.data
execute if score #surface switch.data matches 3 run scoreboard players operation #engine switch.data /= #30 switch.data
scoreboard players operation #multiplier switch.data += #engine switch.data

#Stop motion when predicted position isn't reached
execute store result score #new_pos_x switch.data run data get entity @s Pos[0] 10000
execute store result score #new_pos_z switch.data run data get entity @s Pos[2] 10000

scoreboard players operation @s switch.temp.predicted_pos_x -= #new_pos_x switch.data
scoreboard players operation @s switch.temp.predicted_pos_z -= #new_pos_z switch.data
scoreboard players operation @s switch.temp.predicted_pos_x *= #10 switch.data
scoreboard players operation @s switch.temp.predicted_pos_z *= #10 switch.data
scoreboard players operation @s switch.temp.predicted_pos_x /= @s switch.temp.engine
scoreboard players operation @s switch.temp.predicted_pos_z /= @s switch.temp.engine
scoreboard players add @s[scores={switch.temp.predicted_pos_x=0}] switch.temp.predicted_pos_x 1
scoreboard players add @s[scores={switch.temp.predicted_pos_z=0}] switch.temp.predicted_pos_z 1
execute if score @s switch.temp.engine matches 100.. if score @s switch.temp.predicted_pos_x matches -2..2 unless score @s switch.temp.predicted_pos_z matches -3..3 run function switch:modes/mario_kart/kart/stop_motion
execute if score @s switch.temp.engine matches 100.. if score @s switch.temp.predicted_pos_z matches -2..2 unless score @s switch.temp.predicted_pos_x matches -3..3 run function switch:modes/mario_kart/kart/stop_motion
scoreboard players operation @s switch.temp.predicted_pos_x = #new_pos_x switch.data
scoreboard players operation @s switch.temp.predicted_pos_z = #new_pos_z switch.data


#Calculate new motion : motion = (player_motion * multiplier) + old_motion + booster
#If player_motion is null : motion = old_motion
scoreboard players set #booster switch.data 0
execute if score #booster switch.data matches 0 if block ~ ~-1 ~ magenta_glazed_terracotta[facing=west] run scoreboard players set #booster switch.data 1
execute if score #booster switch.data matches 0 if block ~ ~-1 ~ magenta_glazed_terracotta[facing=east] run scoreboard players set #booster switch.data 2
execute if score #booster switch.data matches 0 if block ~ ~-1 ~ magenta_glazed_terracotta[facing=north] run scoreboard players set #booster switch.data 3
execute if score #booster switch.data matches 0 if block ~ ~-1 ~ magenta_glazed_terracotta[facing=south] run scoreboard players set #booster switch.data 4

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


#Apply new motion & update old motion (x% of new motion)
#Depending on the surface, the kart will slide or not
data modify entity @s Motion[0] set from storage switch:main Motion[0]
data modify entity @s Motion[2] set from storage switch:main Motion[2]
execute if score #surface switch.data matches 0..1 store result score @s switch.temp.motion_x run data get storage switch:main Motion[0] 8000000
execute if score #surface switch.data matches 0..1 store result score @s switch.temp.motion_z run data get storage switch:main Motion[2] 8000000
execute if score #surface switch.data matches 2 store result score @s switch.temp.motion_x run data get storage switch:main Motion[0] 9333333
execute if score #surface switch.data matches 2 store result score @s switch.temp.motion_z run data get storage switch:main Motion[2] 9333333
execute if score #surface switch.data matches 3 store result score @s switch.temp.motion_x run data get storage switch:main Motion[0] 8000000
execute if score #surface switch.data matches 3 store result score @s switch.temp.motion_z run data get storage switch:main Motion[2] 8000000
data remove storage switch:main Motion


#Try to predict position after 1 tick
##new_pos = old_pos + new_motion
scoreboard players operation #new_motion_x switch.data /= #1000 switch.data
scoreboard players operation #new_motion_z switch.data /= #1000 switch.data
scoreboard players operation @s switch.temp.predicted_pos_x += #new_motion_x switch.data
scoreboard players operation @s switch.temp.predicted_pos_z += #new_motion_z switch.data


#Add tag to avoid double calculation
tag @s add switch.calculated

#Title actionbar
execute store result score #new_pos_x switch.data run data get entity @s Pos[0] 10000
execute store result score #new_pos_z switch.data run data get entity @s Pos[2] 10000
scoreboard players operation @s switch.temp.old_pos_x -= #new_pos_x switch.data
scoreboard players operation @s switch.temp.old_pos_z -= #new_pos_z switch.data
scoreboard players operation @s[scores={switch.temp.old_pos_x=..-1}] switch.temp.old_pos_x *= #-1 switch.data
scoreboard players operation @s[scores={switch.temp.old_pos_z=..-1}] switch.temp.old_pos_z *= #-1 switch.data
scoreboard players operation @s switch.temp.old_pos_x *= @s switch.temp.old_pos_x
scoreboard players operation @s switch.temp.old_pos_z *= @s switch.temp.old_pos_z
scoreboard players operation @s switch.temp.old_pos_x += @s switch.temp.old_pos_z
scoreboard players operation #input switch.data = @s switch.temp.old_pos_x
function switch:math/sqrt
scoreboard players operation #output switch.data *= #20 switch.data
scoreboard players operation @s switch.temp.old_pos_x = #output switch.data
scoreboard players operation @s switch.temp.old_pos_z = #output switch.data
scoreboard players operation @s switch.temp.old_pos_x /= #10000 switch.data
scoreboard players operation @s switch.temp.old_pos_z %= #10000 switch.data
scoreboard players operation @s switch.temp.old_pos_z /= #1000 switch.data
title @a actionbar [{"text":"Moteur : ","color":"yellow"},{"score":{"name":"@s","objective":"switch.temp.engine"},"color":"aqua"},{"text":" tr/min | Vitesse : "},{"score":{"name":"@s","objective":"switch.temp.old_pos_x"},"color":"aqua"},{"text":","},{"score":{"name":"@s","objective":"switch.temp.old_pos_z"},"color":"aqua"},{"text":" blocks/s "}]
scoreboard players operation @s switch.temp.old_pos_x = #new_pos_x switch.data
scoreboard players operation @s switch.temp.old_pos_z = #new_pos_z switch.data


