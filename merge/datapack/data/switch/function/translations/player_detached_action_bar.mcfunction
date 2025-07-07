
# French
execute unless score #engine_state switch.data matches 3 run title @a[tag=detached,scores={switch.lang=0}] actionbar [{"text":"Vote du ","color":"aqua"},{"text":"mini-jeu","color":"yellow"},{"text":" en cours"},{"text":" | ","color":"gray"},{"score":{"name":"#players_in_game","objective":"switch.data"},"color":"yellow"},{"text":" joueurs en jeu"}]
execute if score #engine_state switch.data matches 3 run title @a[tag=detached,scores={switch.lang=0}] actionbar [{"nbt":"current_game_name","storage":"switch:main","color":"yellow"},{"text":" en cours","color":"aqua"},{"text":" | ","color":"gray"},{"score":{"name":"#players_in_game","objective":"switch.data"}},{"text":" joueurs en jeu","color":"aqua"}]

# English
execute unless score #engine_state switch.data matches 3 run title @a[tag=detached,scores={switch.lang=1}] actionbar [{"text":"Mini-game","color":"yellow"},{"text":" vote in progress","color":"aqua"},{"text":" | ","color":"gray"},{"score":{"name":"#players_in_game","objective":"switch.data"},"color":"yellow"},{"text":" players in game","color":"aqua"}]
execute if score #engine_state switch.data matches 3 run title @a[tag=detached,scores={switch.lang=1}] actionbar [{"nbt":"current_game_name","storage":"switch:main","color":"yellow"},{"text":" in progress","color":"aqua"},{"text":" | ","color":"gray"},{"score":{"name":"#players_in_game","objective":"switch.data"}},{"text":" players in game","color":"aqua"}]

