
tag @s add switch.temp

# Role selection (1/4 kings)
scoreboard players add #next_player_id switch.data 1
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.king @s
execute if score #next_role switch.data matches 2.. run team join switch.temp.civil @s
execute if score #next_role switch.data matches 5.. run scoreboard players set #next_role switch.data 0


# Linked marker for offline players
setblock 0 0 0 yellow_shulker_box
loot insert 0 0 0 loot switch:get_username
summon marker 0 0 0 {Tags:["switch.temp.player","switch.new"]}
execute as @e[tag=switch.new] run function switch:modes/beat_the_kings/roles/marker
scoreboard players operation @s switch.temp.id = #next_player_id switch.data
setblock 0 0 0 air

tag @s remove switch.temp

