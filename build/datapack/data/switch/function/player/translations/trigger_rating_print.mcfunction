
#> switch:player/translations/trigger_rating_print
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/rating/print with storage switch:temp input
#
# @args		index (unknown)
#

# French
$tellraw @s[scores={switch.lang=0}] [{"text":"[","color":"#00E5FF"},{"nbt":"minigames[{index:$(index)}].name_fr","storage":"switch:main","interpret":true,"color":"#00E5FF"},{"text":"] ","color":"#00E5FF"},{"text":"Notez ce mini-jeu : ","color":"#E4ECF7"},{"text":"✮","color":"#FFE60A","hover_event":{"action":"show_text","value":{"text":"Noter 1 étoile","color":"#AEBBD0"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index)01"}},{"text":"✮","color":"#FFE60A","hover_event":{"action":"show_text","value":{"text":"Noter 2 étoiles","color":"#AEBBD0"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index)02"}},{"text":"✮","color":"#FFE60A","hover_event":{"action":"show_text","value":{"text":"Noter 3 étoiles","color":"#AEBBD0"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index)03"}},{"text":"✮","color":"#FFE60A","hover_event":{"action":"show_text","value":{"text":"Noter 4 étoiles","color":"#AEBBD0"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index)04"}},{"text":"✮","color":"#FFE60A","hover_event":{"action":"show_text","value":{"text":"Noter 5 étoiles","color":"#AEBBD0"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index)05"}}]
execute if data storage switch:temp temp if data storage switch:temp {temp:1} run tellraw @s[scores={switch.lang=0}] [{"text":"Votre vote actuel est de ","color":"#FFA600"},{"nbt":"temp","storage":"switch:temp","plain":true,"color":"#FFE60A"},{"text":" étoile."}]
execute if data storage switch:temp temp unless data storage switch:temp {temp:1} run tellraw @s[scores={switch.lang=0}] [{"text":"Votre vote actuel est de ","color":"#FFA600"},{"nbt":"temp","storage":"switch:temp","plain":true,"color":"#FFE60A"},{"text":" étoiles."}]
execute unless data storage switch:temp temp run tellraw @s[scores={switch.lang=0}] [{"text":"Aucun vote actuel pour ce mini-jeu","color":"#FFA600"}]

# English
$tellraw @s[scores={switch.lang=1}] [{"text":"[","color":"#00E5FF"},{"nbt":"minigames[{index:$(index)}].name_en","storage":"switch:main","interpret":true,"color":"#00E5FF"},{"text":"] ","color":"#00E5FF"},{"text":"Note this minigame: ","color":"#E4ECF7"},{"text":"✮","color":"#FFE60A","hover_event":{"action":"show_text","value":{"text":"Rate 1 star","color":"#AEBBD0"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index)01"}},{"text":"✮","color":"#FFE60A","hover_event":{"action":"show_text","value":{"text":"Rate 2 stars","color":"#AEBBD0"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index)02"}},{"text":"✮","color":"#FFE60A","hover_event":{"action":"show_text","value":{"text":"Rate 3 stars","color":"#AEBBD0"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index)03"}},{"text":"✮","color":"#FFE60A","hover_event":{"action":"show_text","value":{"text":"Rate 4 stars","color":"#AEBBD0"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index)04"}},{"text":"✮","color":"#FFE60A","hover_event":{"action":"show_text","value":{"text":"Rate 5 stars","color":"#AEBBD0"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index)05"}}]
execute if data storage switch:temp temp if data storage switch:temp {temp:1} run tellraw @s[scores={switch.lang=1}] [{"text":"Your current vote is ","color":"#FFA600"},{"nbt":"temp","storage":"switch:temp","plain":true,"color":"#FFE60A"},{"text":" star."}]
execute if data storage switch:temp temp unless data storage switch:temp {temp:1} run tellraw @s[scores={switch.lang=1}] [{"text":"Your current vote is ","color":"#FFA600"},{"nbt":"temp","storage":"switch:temp","plain":true,"color":"#FFE60A"},{"text":" stars."}]
execute unless data storage switch:temp temp run tellraw @s[scores={switch.lang=1}] [{"text":"No current votes for this mini-game","color":"#FFA600"}]

