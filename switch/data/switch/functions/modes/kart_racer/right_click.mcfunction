
execute if score #kart_racer_seconds switch.data matches 0.. if score @s switch.respawn_cp_id matches -1 if data entity @s SelectedItem.tag.switch.classic_respawn run tellraw @s ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Tu n'as encore passé aucun checkpoint, seul le hard respawn fonctionne"}]
execute if score #kart_racer_seconds switch.data matches 0.. unless score @s switch.respawn_cp_id matches -1 if data entity @s SelectedItem.tag.switch.classic_respawn run function switch:modes/kart_racer/checkpoints/respawn/classic
execute if score #kart_racer_seconds switch.data matches 0.. if data entity @s SelectedItem.tag.switch.hard_respawn run function switch:modes/kart_racer/checkpoints/respawn/hard
execute if data entity @s SelectedItem.tag.switch.change_map run function switch:modes/kart_racer/vote_for_change_map
execute if entity @s[tag=switch.playsound] at @s run playsound stardust:wormhole_potion ambient @s ^ ^ ^3
execute if entity @s[tag=switch.playsound] at @s run particle portal ^ ^1 ^1 1 1 1 1 1000
tag @s remove switch.playsound
scoreboard players reset @s switch.right_click

