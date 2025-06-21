
#> switch:modes/traitors_game/roles/marker
#
# @within	switch:modes/traitors_game/roles/main
#

scoreboard players operation @s switch.id = #player_id switch.id
data modify entity @s data.name set from block 0 11 0 Items[0].components."minecraft:profile".name
data modify entity @s Tags set from entity @p[tag=switch.temp] Tags
scoreboard players operation @s switch.temp.role = @p[tag=switch.temp] switch.temp.role
tag @s add switch.temp.player

