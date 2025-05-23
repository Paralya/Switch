
#> switch:translations/player_trigger_succes_display_loop
#
# @within	switch:player/trigger/succes/display_loop with storage switch:temp temp
#

# French
$execute if data storage switch:advancements all[{id:$(id)}].players[{name:"$(player)"}] run tellraw @s[scores={switch.lang=0}] [{"text":"➤","color":"aqua","hover_event":{"action":"show_text","value":[{"text":"[$(name)]\n","color":"$(color)"},{"text":"$(description)\n","color":"white"},{"nbt":"temp.percent.int","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":",","color":"dark_aqua"},{"nbt":"temp.percent.digits","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":"% de réussite soit $(total) joueurs","color":"aqua"},{"text":"\n\n[Proposé par $(auteur)]","color":"gray"}]}},{"text":" [$(name)] ","color":"$(color)"},{"text":"avec ","color":"aqua"},{"nbt":"temp.percent.int","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":",","color":"dark_aqua"},{"nbt":"temp.percent.digits","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":"% de réussite","color":"aqua"}]

# English
$execute if data storage switch:advancements all[{id:$(id)}].players[{name:"$(player)"}] run tellraw @s[scores={switch.lang=1}] [{"text":"➤","color":"aqua","hover_event":{"action":"show_text","value":[{"text":"[$(name)]\n","color":"$(color)"},{"text":"$(description_en)\n","color":"white"},{"nbt":"temp.percent.int","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":",","color":"dark_aqua"},{"nbt":"temp.percent.digits","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":"% success or $(total) players","color":"aqua"},{"text":"\n\n[Suggested by $(auteur)]","color":"gray"}]}},{"text":" [$(name)] ","color":"$(color)"},{"text":"with ","color":"aqua"},{"nbt":"temp.percent.int","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":",","color":"dark_aqua"},{"nbt":"temp.percent.digits","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":"% success","color":"aqua"}]

