
#> switch:player/translations/trigger_succes_mode
#
# @executed	in minecraft:overworld
#
# @within	switch:player/trigger/succes/mode_section
#

# French
tellraw @s[scores={switch.lang=0}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Succès obtenables en "},{"nbt":"current_game_name","storage":"switch:main","color":"aqua"},{"text":" :"}]

# English
tellraw @s[scores={switch.lang=1}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Advancements available in "},{"nbt":"current_game_name","storage":"switch:main","color":"aqua"},{"text":":"}]

