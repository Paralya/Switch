
#> switch:translations/player_trigger_money_
#
# @within	switch:player/trigger/money/
#

# French
tellraw @s[scores={switch.lang=0}] [{"nbt":"ParalyaSapphiresFR","storage":"switch:main","interpret":true},{"text":" Vous possédez un total de ","color":"blue"},{"score":{"name":"@s","objective":"switch.money"},"underlined":true},{"nbt":"SapphireFR","storage":"switch:main","interpret":true}]

# English
tellraw @s[scores={switch.lang=1}] [{"nbt":"ParalyaSapphiresEN","storage":"switch:main","interpret":true},{"text":" You have a total of ","color":"blue"},{"score":{"name":"@s","objective":"switch.money"},"underlined":true},{"nbt":"SapphireEN","storage":"switch:main","interpret":true}]

