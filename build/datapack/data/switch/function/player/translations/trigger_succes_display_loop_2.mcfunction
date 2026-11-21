
#> switch:player/translations/trigger_succes_display_loop_2
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
#			desc_en (unknown)
#

# French
$execute unless data storage switch:advancements all[{id:$(id)}].players[{name:"$(player)"}] run tellraw @s[scores={switch.lang=0}] [{"text":"➤","color":"#AEBBD0","hover_event":{"action":"show_text","value":[{"text":"[$(name)]\n","color":"$(color)"},{"text":"$(description)\n","color":"#E4ECF7"},{"nbt":"temp.percent.int","storage":"switch:temp","plain":true,"color":"#6B788F"},{"text":",","color":"#6B788F"},{"nbt":"temp.percent.digits","storage":"switch:temp","plain":true,"color":"#6B788F"},{"text":"% de réussite soit $(total) joueurs","color":"#AEBBD0"},{"text":"\n\n[Proposé par $(auteur)]","color":"#AEBBD0"}]}},{"text":" [$(name)] ","color":"$(color)"},{"text":"avec ","color":"#AEBBD0"},{"nbt":"temp.percent.int","storage":"switch:temp","plain":true,"color":"#6B788F"},{"text":",","color":"#6B788F"},{"nbt":"temp.percent.digits","storage":"switch:temp","plain":true,"color":"#6B788F"},{"text":"% de réussite","color":"#AEBBD0"}]

# English
$execute unless data storage switch:advancements all[{id:$(id)}].players[{name:"$(player)"}] run tellraw @s[scores={switch.lang=1}] [{"text":"➤","color":"#AEBBD0","hover_event":{"action":"show_text","value":[{"text":"[$(name)]\n","color":"$(color)"},{"text":"$(desc_en)\n","color":"#E4ECF7"},{"nbt":"temp.percent.int","storage":"switch:temp","plain":true,"color":"#6B788F"},{"text":",","color":"#6B788F"},{"nbt":"temp.percent.digits","storage":"switch:temp","plain":true,"color":"#6B788F"},{"text":"% success or $(total) players","color":"#AEBBD0"},{"text":"\n\n[Suggested by $(auteur)]","color":"#AEBBD0"}]}},{"text":" [$(name)] ","color":"$(color)"},{"text":"with ","color":"#AEBBD0"},{"nbt":"temp.percent.int","storage":"switch:temp","plain":true,"color":"#6B788F"},{"text":",","color":"#6B788F"},{"nbt":"temp.percent.digits","storage":"switch:temp","plain":true,"color":"#6B788F"},{"text":"% success","color":"#AEBBD0"}]

