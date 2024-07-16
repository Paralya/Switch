
scoreboard players operation #block switch.data = @s switch.temp.color
scoreboard players operation #block switch.data %= #16 switch.data
scoreboard players add #block switch.data 1

execute if score #block switch.data matches 1 run setblock ~ ~ ~ white_wool
execute if score #block switch.data matches 2 run setblock ~ ~ ~ orange_wool
execute if score #block switch.data matches 3 run setblock ~ ~ ~ magenta_wool
execute if score #block switch.data matches 4 run setblock ~ ~ ~ light_blue_wool
execute if score #block switch.data matches 5 run setblock ~ ~ ~ yellow_wool
execute if score #block switch.data matches 6 run setblock ~ ~ ~ lime_wool
execute if score #block switch.data matches 7 run setblock ~ ~ ~ pink_wool
execute if score #block switch.data matches 8 run setblock ~ ~ ~ gray_wool
execute if score #block switch.data matches 9 run setblock ~ ~ ~ light_gray_wool
execute if score #block switch.data matches 10 run setblock ~ ~ ~ cyan_wool
execute if score #block switch.data matches 11 run setblock ~ ~ ~ purple_wool
execute if score #block switch.data matches 12 run setblock ~ ~ ~ blue_wool
execute if score #block switch.data matches 13 run setblock ~ ~ ~ brown_wool
execute if score #block switch.data matches 14 run setblock ~ ~ ~ green_wool
execute if score #block switch.data matches 15 run setblock ~ ~ ~ red_wool
execute if score #block switch.data matches 16 run setblock ~ ~ ~ black_wool

scoreboard players set #points switch.data 1
execute positioned ~-1 ~ ~ unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1
execute positioned ~ ~ ~-1 unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1
execute positioned ~ ~ ~1 unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1
execute positioned ~1 ~ ~ unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1

execute if score #points switch.data matches 5 run setblock ~ ~ ~ emerald_block
execute if score #points switch.data matches 5 run summon firework_rocket ~ ~1 ~ {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{"flight_duration":2},"minecraft:firework_explosion":{"shape":"star","has_trail":true,"has_flicker":true,"colors":[3789123]}}}}
execute unless score #test_mode switch.data matches 1 if score #points switch.data matches 5 on attacker run advancement grant @s only switch:visible/44
execute if score #points switch.data matches 1..4 run summon firework_rocket ~ ~1 ~ {LifeTime:10,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{"flight_duration":2},"minecraft:firework_explosion":{"shape":"star","has_trail":true,"has_flicker":true,"colors":[5631]}}}}

execute if score #points switch.data matches 5 run scoreboard players set #points switch.data 6
execute if score #points switch.data matches 6 run scoreboard players add @s switch.temp.nb_de_a_coudre 1
execute unless score #test_mode switch.data matches 1 if score @s switch.temp.nb_de_a_coudre matches 3 run advancement grant @s only switch:visible/21
function switch:translations/modes_simultaneous_jump_done
scoreboard players operation @s switch.temp.points += #points switch.data

function switch:modes/simultaneous_jump/teleport
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

