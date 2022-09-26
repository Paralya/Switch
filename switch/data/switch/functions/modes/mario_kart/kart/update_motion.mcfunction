
#Define multiplier depending on engine speed
scoreboard players set #multiplier switch.data 100
scoreboard players operation #engine switch.data = @s switch.temp.engine
scoreboard players operation #engine switch.data /= #10 switch.data
scoreboard players operation #multiplier switch.data += #engine switch.data


#Calculate new motion : motion = (player_motion * multiplier) + old_motion
#If player_motion is null : motion = old_motion
data modify storage switch:main Motion set value [0.0d, 0.0d, 0.0d]
scoreboard players operation #pos_x switch.data = #motion_x switch.data
scoreboard players operation #pos_x switch.data *= #multiplier switch.data
scoreboard players operation #pos_x switch.data += @s switch.temp.motion_x
execute store result storage switch:main Motion[0] double 0.0000001 run scoreboard players get #pos_x switch.data
scoreboard players reset #motion_x switch.data

scoreboard players operation #pos_z switch.data = #motion_z switch.data
scoreboard players operation #pos_z switch.data *= #multiplier switch.data
scoreboard players operation #pos_z switch.data += @s switch.temp.motion_z
execute store result storage switch:main Motion[2] double 0.0000001 run scoreboard players get #pos_z switch.data
scoreboard players reset #motion_z switch.data


#Apply new motion & update old motion (75% of new motion)
data modify entity @s Motion[0] set from storage switch:main Motion[0]
data modify entity @s Motion[2] set from storage switch:main Motion[2]
execute store result score @s switch.temp.motion_x run data get entity @s Motion[0] 750000
execute store result score @s switch.temp.motion_z run data get entity @s Motion[2] 750000
data remove storage switch:main Motion

#Add tag to avoid double calculation
tag @s add switch.calculated

