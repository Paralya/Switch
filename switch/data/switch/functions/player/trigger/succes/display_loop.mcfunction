
# Tellraw
data modify storage switch:temp temp set from storage switch:temp copy[0]
$execute if entity @s[advancements={switch:visible/$(id)=true}] run tellraw @s [{"text":"➤","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"[$(name)]\n","color":"$(color)"},{"text":"$(description)\n","color":"white"},{"nbt":"temp.percent.int","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":",","color":"dark_aqua"},{"nbt":"temp.percent.digits","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":"% de réussite soit $(total) joueurs","color":"aqua"},{"text":"\n\n[Proposé par $(auteur)]","color":"gray"}]}},{"text":" [$(name)] ","color":"$(color)"},{"text":"avec ","color":"aqua"},{"nbt":"temp.percent.int","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":",","color":"dark_aqua"},{"nbt":"temp.percent.digits","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":"% de réussite","color":"aqua"}]

# Continue loop
data remove storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop with storage switch:temp copy[0]

