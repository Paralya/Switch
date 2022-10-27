
execute if score #kart_racer_seconds switch.data matches 0.. if score @s switch.respawn_cp_id matches -1 if data entity @s SelectedItem.tag.switch.classic_respawn run tellraw @s ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Tu n'as encore passé aucun checkpoint, seul le hard respawn fonctionne"}]
execute if score #kart_racer_seconds switch.data matches 0.. unless score @s switch.respawn_cp_id matches -1 if data entity @s SelectedItem.tag.switch.classic_respawn run function switch:modes/kart_racer/checkpoints/respawn/classic
execute if score #kart_racer_seconds switch.data matches 0.. if data entity @s SelectedItem.tag.switch.hard_respawn run function switch:modes/kart_racer/checkpoints/respawn/hard
scoreboard players reset @s switch.right_click

