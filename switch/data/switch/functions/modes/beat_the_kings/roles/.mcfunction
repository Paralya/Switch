
# Role selection (1/4 kings)
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.king @s
execute if score #next_role switch.data matches 2..5 run team join switch.temp.civil @s
execute if score #next_role switch.data matches 6 run team join switch.temp.king @s
execute if score #next_role switch.data matches 7..10 run team join switch.temp.civil @s
execute if score #next_role switch.data matches 10.. run scoreboard players set #next_role switch.data 0

# Linked marker for offline players
setblock 0 0 0 yellow_shulker_box
loot insert 0 0 0 loot switch:get_username
scoreboard players operation #player_id switch.id = @s switch.id
tag @s add switch.temp
execute summon marker run function switch:modes/beat_the_kings/roles/marker
tag @s remove switch.temp
setblock 0 0 0 air

