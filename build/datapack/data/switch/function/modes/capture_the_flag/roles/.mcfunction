
#> switch:modes/capture_the_flag/roles/
#
# @within	switch:modes/capture_the_flag/joined
#			switch:modes/capture_the_flag/start
#

tag @s add switch.temp

# Role selection
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.red @s
execute if score #next_role switch.data matches 2 run team join switch.temp.blue @s
execute if score #next_role switch.data matches 2 run scoreboard players set #next_role switch.data 0

# Linked marker for offline players
setblock 0 0 0 yellow_shulker_box
loot insert 0 0 0 loot switch:get_username
summon marker 0 0 0 {Tags:["switch.temp.player","switch.new"]}
scoreboard players operation #player_id switch.id = @s switch.id
execute as @e[tag=switch.new] run function switch:modes/capture_the_flag/roles/marker
setblock 0 0 0 air

tag @s remove switch.temp

function switch:modes/capture_the_flag/teleport_to_spawn
execute at @s run playsound entity.player.levelup ambient @s

