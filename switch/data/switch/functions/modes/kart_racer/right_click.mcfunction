
# Manage Respawns
execute if score #kart_racer_seconds switch.data matches 0.. if score @s switch.respawn_cp_id matches -1 if data entity @s SelectedItem.tag.switch.classic_respawn run tellraw @s [{"nbt":"ParalyaError","storage":"switch:main","interpret":true},{"text":" Tu n'as encore passé aucun checkpoint, seul le hard respawn fonctionne"}]
execute if score #kart_racer_seconds switch.data matches 0.. unless score @s switch.respawn_cp_id matches -1 if data entity @s SelectedItem.tag.switch.classic_respawn run function switch:modes/kart_racer/checkpoints/respawn/classic
execute if score #kart_racer_seconds switch.data matches 0.. if data entity @s SelectedItem.tag.switch.hard_respawn run function switch:modes/kart_racer/checkpoints/respawn/hard

# Manage Model changes
execute if data entity @s SelectedItem.tag.switch.previous_model run scoreboard players set @s shopping_kart.trigger_model -2
execute if data entity @s SelectedItem.tag.switch.random_model run scoreboard players set @s shopping_kart.trigger_model -4
execute if data entity @s SelectedItem.tag.switch.next_model run scoreboard players set @s shopping_kart.trigger_model -1

# Manage Votes
execute unless score @s switch.temp.vote_collisions matches 1 if data entity @s SelectedItem.tag.switch.enable_collisions run function switch:modes/kart_racer/vote_for_collisions
execute unless score @s switch.temp.change_map matches 1 if data entity @s SelectedItem.tag.switch.change_map run function switch:modes/kart_racer/vote_for_change_map

# Playsounds
execute if entity @s[tag=switch.playsound] at @s run playsound stardust:wormhole_potion ambient @s ^ ^ ^3
execute if entity @s[tag=switch.playsound] at @s run particle portal ^ ^1 ^1 1 1 1 1 1000
tag @s remove switch.playsound

# Reset score
scoreboard players reset @s switch.right_click

