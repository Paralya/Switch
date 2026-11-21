
#> switch:player/translations/trigger_succes_display_loop
#
# @within	switch:player/trigger/succes/display_loop with storage switch:temp temp
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
$execute if data storage switch:advancements all[{id:$(id)}].players[{name:"$(player)"}] run tellraw @s[scores={switch.lang=0}] [{"text":"➤","color":"#00E5FF","hover_event":{"action":"show_text","value":[{"text":"[$(name)]\n","color":"$(color)"},{"text":"$(description)\n","color":"#E4ECF7"},{"nbt":"temp.percent.int","storage":"switch:temp","plain":true,"color":"#12A4B8"},{"text":",","color":"#12A4B8"},{"nbt":"temp.percent.digits","storage":"switch:temp","plain":true,"color":"#12A4B8"},{"text":"% de réussite soit $(total) joueurs","color":"#00E5FF"},{"text":"\n\n[Proposé par $(auteur)]","color":"#AEBBD0"}]}},{"text":" [$(name)] ","color":"$(color)"},{"text":"avec ","color":"#00E5FF"},{"nbt":"temp.percent.int","storage":"switch:temp","plain":true,"color":"#12A4B8"},{"text":",","color":"#12A4B8"},{"nbt":"temp.percent.digits","storage":"switch:temp","plain":true,"color":"#12A4B8"},{"text":"% de réussite","color":"#00E5FF"}]

# English
$execute if data storage switch:advancements all[{id:$(id)}].players[{name:"$(player)"}] run tellraw @s[scores={switch.lang=1}] [{"text":"➤","color":"#00E5FF","hover_event":{"action":"show_text","value":[{"text":"[$(name)]\n","color":"$(color)"},{"text":"$(desc_en)\n","color":"#E4ECF7"},{"nbt":"temp.percent.int","storage":"switch:temp","plain":true,"color":"#12A4B8"},{"text":",","color":"#12A4B8"},{"nbt":"temp.percent.digits","storage":"switch:temp","plain":true,"color":"#12A4B8"},{"text":"% success or $(total) players","color":"#00E5FF"},{"text":"\n\n[Suggested by $(auteur)]","color":"#AEBBD0"}]}},{"text":" [$(name)] ","color":"$(color)"},{"text":"with ","color":"#00E5FF"},{"nbt":"temp.percent.int","storage":"switch:temp","plain":true,"color":"#12A4B8"},{"text":",","color":"#12A4B8"},{"nbt":"temp.percent.digits","storage":"switch:temp","plain":true,"color":"#12A4B8"},{"text":"% success","color":"#00E5FF"}]

