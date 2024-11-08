
#> switch:translations/modes_kart_racer_right_click
#
# @within	switch:modes/kart_racer/right_click
#

# French
execute if score #kart_racer_seconds switch.data matches 0.. if score @s switch.respawn_cp_id matches -1 if data entity @s SelectedItem.components."minecraft:custom_data".switch.classic_respawn run tellraw @s[scores={switch.lang=0}] [{"nbt":"ParalyaError","storage":"switch:main","interpret":true},{"text":" Tu n'as encore passé aucun checkpoint, seul le hard respawn fonctionne"}]

# English
execute if score #kart_racer_seconds switch.data matches 0.. if score @s switch.respawn_cp_id matches -1 if data entity @s SelectedItem.components."minecraft:custom_data".switch.classic_respawn run tellraw @s[scores={switch.lang=1}] [{"nbt":"ParalyaError","storage":"switch:main","interpret":true},{"text":" You haven't passed any checkpoints yet, only hard respawn works"}]

