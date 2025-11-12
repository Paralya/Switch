
#> switch:translations/player_trigger_succes_display_loop_2
#
# @within	switch:player/trigger/succes/display_loop_2 with storage switch:temp temp
#
# @args		id (unknown)
#			player (unknown)
#			name (unknown)
#			color (unknown)
#			description (unknown)
#			total (unknown)
#			auteur (unknown)
#			description_en (unknown)
#

# French
$execute unless data storage switch:advancements all[{id:$(id)}].players[{name:"$(player)"}] run tellraw @s[scores={switch.lang=0}] [{"text":"➤","color":"gray","hover_event":{"action":"show_text","value":[{"text":"[$(name)]\n","color":"$(color)"},{"text":"$(description)\n","color":"white"},{"nbt":"temp.percent.int","storage":"switch:temp","interpret":false,"color":"dark_gray"},{"text":",","color":"dark_gray"},{"nbt":"temp.percent.digits","storage":"switch:temp","interpret":false,"color":"dark_gray"},{"text":"% de réussite soit $(total) joueurs","color":"gray"},{"text":"\n\n[Proposé par $(auteur)]","color":"gray"}]}},{"text":" [$(name)] ","color":"$(color)"},{"text":"avec ","color":"gray"},{"nbt":"temp.percent.int","storage":"switch:temp","interpret":false,"color":"dark_gray"},{"text":",","color":"dark_gray"},{"nbt":"temp.percent.digits","storage":"switch:temp","color":"dark_gray"},{"text":"% de réussite","color":"gray"}]

# English
$execute unless data storage switch:advancements all[{id:$(id)}].players[{name:"$(player)"}] run tellraw @s[scores={switch.lang=1}] [{"text":"➤","color":"gray","hover_event":{"action":"show_text","value":[{"text":"[$(name)]\n","color":"$(color)"},{"text":"$(description_en)\n","color":"white"},{"nbt":"temp.percent.int","storage":"switch:temp","interpret":false,"color":"dark_gray"},{"text":",","color":"dark_gray"},{"nbt":"temp.percent.digits","storage":"switch:temp","interpret":false,"color":"dark_gray"},{"text":"% success or $(total) players","color":"gray"},{"text":"\n\n[Suggested by $(auteur)]","color":"gray"}]}},{"text":" [$(name)] ","color":"$(color)"},{"text":"with ","color":"gray"},{"nbt":"temp.percent.int","storage":"switch:temp","interpret":false,"color":"dark_gray"},{"text":",","color":"dark_gray"},{"nbt":"temp.percent.digits","storage":"switch:temp","color":"dark_gray"},{"text":"% success","color":"gray"}]

