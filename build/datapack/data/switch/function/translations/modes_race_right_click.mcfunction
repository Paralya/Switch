
#> switch:translations/modes_race_right_click
#
# @executed	as @a[tag=!detached,scores={switch.right_click=1..}]
#
# @within	switch:modes/race/right_click
#

# French
execute if score #race_seconds switch.data matches 0.. if score @s switch.respawn_cp_id matches -1 if data entity @s SelectedItem.components."minecraft:custom_data".switch.classic_respawn run tellraw @s[scores={switch.lang=0}] [{"nbt":"ParalyaError","storage":"switch:main","interpret":true},{"text":" Tu n'as encore passé aucun checkpoint, seul le hard respawn fonctionne"}]

# English
execute if score #race_seconds switch.data matches 0.. if score @s switch.respawn_cp_id matches -1 if data entity @s SelectedItem.components."minecraft:custom_data".switch.classic_respawn run tellraw @s[scores={switch.lang=1}] [{"nbt":"ParalyaError","storage":"switch:main","interpret":true},{"text":" You haven't passed any checkpoints yet, only hard respawn works"}]

