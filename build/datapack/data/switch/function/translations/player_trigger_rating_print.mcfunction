
#> switch:translations/player_trigger_rating_print
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/rating/print with storage switch:temp input
#
# @args		index (unknown)
#

# French
$tellraw @s[scores={switch.lang=0}] [{"text":"[","color":"aqua"},{"nbt":"minigames[{index:$(index)}].name_fr","storage":"switch:main","interpret":false,"color":"aqua"},{"text":"] ","color":"aqua"},{"text":"Notez ce mini-jeu : ","color":"white"},{"text":"✮","color":"yellow","hover_event":{"action":"show_text","value":{"text":"Noter 1 étoile","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index)01"}},{"text":"✮","color":"yellow","hover_event":{"action":"show_text","value":{"text":"Noter 2 étoiles","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index)02"}},{"text":"✮","color":"yellow","hover_event":{"action":"show_text","value":{"text":"Noter 3 étoiles","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index)03"}},{"text":"✮","color":"yellow","hover_event":{"action":"show_text","value":{"text":"Noter 4 étoiles","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index)04"}},{"text":"✮","color":"yellow","hover_event":{"action":"show_text","value":{"text":"Noter 5 étoiles","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index)05"}}]
execute if data storage switch:temp temp if data storage switch:temp {temp:1} run tellraw @s[scores={switch.lang=0}] [{"text":"Votre vote actuel est de ","color":"gold"},{"nbt":"temp","storage":"switch:temp","interpret":false,"color":"yellow"},{"text":" étoile."}]
execute if data storage switch:temp temp unless data storage switch:temp {temp:1} run tellraw @s[scores={switch.lang=0}] [{"text":"Votre vote actuel est de ","color":"gold"},{"nbt":"temp","storage":"switch:temp","interpret":false,"color":"yellow"},{"text":" étoiles."}]
execute unless data storage switch:temp temp run tellraw @s[scores={switch.lang=0}] [{"text":"Aucun vote actuel pour ce mini-jeu","color":"gold"}]

# English
$tellraw @s[scores={switch.lang=1}] [{"text":"[","color":"aqua"},{"nbt":"minigames[{index:$(index)}].name_en","storage":"switch:main","interpret":false,"color":"aqua"},{"text":"] ","color":"aqua"},{"text":"Note this minigame: ","color":"white"},{"text":"✮","color":"yellow","hover_event":{"action":"show_text","value":{"text":"Rate 1 star","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index)01"}},{"text":"✮","color":"yellow","hover_event":{"action":"show_text","value":{"text":"Rate 2 stars","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index)02"}},{"text":"✮","color":"yellow","hover_event":{"action":"show_text","value":{"text":"Rate 3 stars","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index)03"}},{"text":"✮","color":"yellow","hover_event":{"action":"show_text","value":{"text":"Rate 4 stars","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index)04"}},{"text":"✮","color":"yellow","hover_event":{"action":"show_text","value":{"text":"Rate 5 stars","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index)05"}}]
execute if data storage switch:temp temp if data storage switch:temp {temp:1} run tellraw @s[scores={switch.lang=1}] [{"text":"Your current vote is ","color":"gold"},{"nbt":"temp","storage":"switch:temp","interpret":false,"color":"yellow"},{"text":" star."}]
execute if data storage switch:temp temp unless data storage switch:temp {temp:1} run tellraw @s[scores={switch.lang=1}] [{"text":"Your current vote is ","color":"gold"},{"nbt":"temp","storage":"switch:temp","interpret":false,"color":"yellow"},{"text":" stars."}]
execute unless data storage switch:temp temp run tellraw @s[scores={switch.lang=1}] [{"text":"No current votes for this mini-game","color":"gold"}]

