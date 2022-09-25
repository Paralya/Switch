
data modify storage switch:main oldMotion set from entity @e[type=horse,predicate=switch:mario_kart/have_player_passenger,limit=1] Motion

data modify entity @s Pos set value [0.0d, 0.0d, 0.0d]
data modify entity @s Pos[1] set value 0.0d

execute store result score #pos_x switch.data run data get entity @s Pos[0] 100000
execute store result score #pos_z switch.data run data get entity @s Pos[2] 100000
execute store result score #old_motion_x switch.data run data get entity @s Motion[0] 1000000
execute store result score #old_motion_z switch.data run data get entity @s Motion[2] 1000000
scoreboard players operation #pos_x switch.data += #motion_x switch.data
scoreboard players operation #pos_z switch.data += #motion_z switch.data
scoreboard players operation #pos_x switch.data += #old_motion_x switch.data
scoreboard players operation #pos_z switch.data += #old_motion_z switch.data

scoreboard players set #multiplier switch.data 100
scoreboard players operation #engine switch.data = @e[type=horse,predicate=switch:mario_kart/have_player_passenger,limit=1] switch.temp.engine
scoreboard players operation #engine switch.data /= #100 switch.data
scoreboard players operation #multiplier switch.data += #engine switch.data

execute store result entity @s Pos[0] double 0.00000001 run scoreboard players get #pos_x switch.data
execute store result entity @s Pos[2] double 0.00000001 run scoreboard players get #pos_z switch.data

data modify storage switch:main newPos set from entity @s Pos
execute as @e[type=horse,predicate=switch:mario_kart/have_player_passenger] run data modify entity @s Motion[0] set from storage switch:main newPos[0]
execute as @e[type=horse,predicate=switch:mario_kart/have_player_passenger] run data modify entity @s Motion[2] set from storage switch:main newPos[2]

scoreboard players add @e[type=horse,predicate=switch:mario_kart/have_player_passenger] switch.temp.engine 0
scoreboard players add @e[type=horse,predicate=switch:mario_kart/have_player_passenger,scores={switch.temp.engine=..2}] switch.temp.engine 100
scoreboard players operation @e[type=horse,predicate=switch:mario_kart/have_player_passenger,scores={switch.temp.engine=..100000}] switch.temp.engine *= #10 switch.data
scoreboard players operation @e[type=horse,predicate=switch:mario_kart/have_player_passenger,scores={switch.temp.engine=..100000}] switch.temp.engine /= #9 switch.data
scoreboard players set @e[type=horse,predicate=switch:mario_kart/have_player_passenger,scores={switch.temp.engine=10001..}] switch.temp.engine 1000



#/attribute @e[type=horse,limit=1] generic.movement_speed base set 0.4
#multiplication selon le moteur
#On retient le Motion et on l'ajoute tout en ajoutant le nouveau et en divisant le tout par 2



kill @s
