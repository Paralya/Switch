
scoreboard players operation @s switch.temp.id = #next_player_id switch.data
data modify entity @s data.Name set from block 0 0 0 Items[0].tag.SkullOwner.Name
tag @s add switch.temp.player
tag @s remove switch.new

