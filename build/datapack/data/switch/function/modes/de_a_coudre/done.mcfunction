
#> switch:modes/de_a_coudre/done
#
# @executed	at @s
#
# @within	switch:modes/de_a_coudre/tick [ at @s ]
#

scoreboard players operation #block switch.data = @s switch.temp.color
function switch:modes/_common/set_wool_color

scoreboard players set #points switch.data 1
execute positioned ~-1 ~ ~ unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1
execute positioned ~ ~ ~-1 unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1
execute positioned ~ ~ ~1 unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1
execute positioned ~1 ~ ~ unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1

execute if score #points switch.data matches 5 run setblock ~ ~ ~ emerald_block
execute if score #points switch.data matches 5 run summon firework_rocket ~ ~1 ~ {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;65280]}]}}}}
execute if score #points switch.data matches 1..4 run summon firework_rocket ~ ~1 ~ {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;255]}]}}}}

execute if score #points switch.data matches 5 run scoreboard players set #points switch.data 6
execute if score #points switch.data matches 6 run scoreboard players add @s switch.temp.nb_de_a_coudre 1
execute unless score #test_mode switch.data matches 1 if score @s switch.temp.nb_de_a_coudre matches 3 run advancement grant @s only switch:visible/21
function switch:translations/modes_de_a_coudre_done
scoreboard players operation @s switch.temp.points += #points switch.data

execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s
gamemode spectator @s

