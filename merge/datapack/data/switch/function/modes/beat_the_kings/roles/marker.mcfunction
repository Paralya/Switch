
scoreboard players operation @s switch.id = #player_id switch.id
data modify entity @s data.Name set from block 0 3 0 Items[0].components."minecraft:profile".name
execute if entity @p[tag=switch.temp,team=switch.temp.king] run scoreboard players set @s switch.alive 1
execute if entity @p[tag=switch.temp,team=switch.temp.civil] run scoreboard players set @s switch.alive 2
tag @s add switch.temp.player

