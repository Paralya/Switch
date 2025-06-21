
#> switch:modes/spectres_game/roles/main
#
# @within	switch:modes/spectres_game/death/revive_visible
#			switch:modes/spectres_game/start
#

tag @s add switch.temp
scoreboard players add @s switch.temp.spectror 0

# Linked marker for offline players
setblock 0 9 0 yellow_shulker_box
loot insert 0 9 0 loot switch:get_username
summon marker 0 9 0 {Tags:["switch.temp.player","switch.new"]}
scoreboard players operation #player_id switch.id = @s switch.id
execute as @e[tag=switch.new] run function switch:modes/spectres_game/roles/marker
setblock 0 9 0 air

tag @s remove switch.temp

