
scoreboard players operation @s switch.id = #player_id switch.id
data modify entity @s data.name set from block 0 8 0 Items[0].components."minecraft:profile".name
tag @s add switch.temp.player
tag @s remove switch.new

