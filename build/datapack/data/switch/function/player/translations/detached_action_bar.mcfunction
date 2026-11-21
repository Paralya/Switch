
#> switch:player/translations/detached_action_bar
#
# @executed	in minecraft:overworld & positioned 0 69 0
#
# @within	switch:player/detached_action_bar
#

# French
execute unless score #engine_state switch.data matches 3 run title @a[tag=detached,tag=!switch.jump_timing,scores={switch.lang=0}] actionbar [{"text":"Vote du ","color":"#00E5FF"},{"text":"mini-jeu","color":"#FFE60A"},{"text":" en cours"},{"text":" | ","color":"#AEBBD0"},{"score":{"name":"#players_in_game","objective":"switch.data"},"color":"#FFE60A"},{"text":" joueurs en jeu"}]
execute if score #engine_state switch.data matches 3 run title @a[tag=detached,tag=!switch.jump_timing,scores={switch.lang=0}] actionbar [{"nbt":"current_game_name","storage":"switch:main","interpret":true,"color":"#FFE60A"},{"text":" en cours","color":"#00E5FF"},{"text":" | ","color":"#AEBBD0"},{"score":{"name":"#players_in_game","objective":"switch.data"}},{"text":" joueurs en jeu","color":"#00E5FF"}]

# English
execute unless score #engine_state switch.data matches 3 run title @a[tag=detached,tag=!switch.jump_timing,scores={switch.lang=1}] actionbar [{"text":"Mini-game","color":"#FFE60A"},{"text":" vote in progress","color":"#00E5FF"},{"text":" | ","color":"#AEBBD0"},{"score":{"name":"#players_in_game","objective":"switch.data"},"color":"#FFE60A"},{"text":" players in game","color":"#00E5FF"}]
execute if score #engine_state switch.data matches 3 run title @a[tag=detached,tag=!switch.jump_timing,scores={switch.lang=1}] actionbar [{"nbt":"current_game_name","storage":"switch:main","interpret":true,"color":"#FFE60A"},{"text":" in progress","color":"#00E5FF"},{"text":" | ","color":"#AEBBD0"},{"score":{"name":"#players_in_game","objective":"switch.data"}},{"text":" players in game","color":"#00E5FF"}]

