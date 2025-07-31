
#> switch:modes/spectres_game/roles/marker
#
# @executed	as @e[tag=switch.new]
#
# @within	switch:modes/spectres_game/roles/main [ as @e[tag=switch.new] ]
#

scoreboard players operation @s switch.id = #player_id switch.id
data modify entity @s data.name set from block 0 9 0 Items[0].components."minecraft:profile".name
data modify entity @s Tags set from entity @p[tag=switch.temp] Tags
execute if entity @p[tag=switch.temp,team=switch.temp.spectre] run scoreboard players set @s switch.alive 1
execute if entity @p[tag=switch.temp,team=switch.temp.visible] run scoreboard players set @s switch.alive 2
# pour le marker switch.alive du spectror, il est programmé dans le fichier seconds
tag @s add switch.temp.player

