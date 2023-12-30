
# Tellraw
data modify storage switch:temp temp set from storage switch:temp copy[0]
$execute unless data storage switch:advancements all[{id:$(id)}].players[{name:"$(player)"}] run tellraw @s [{"text":"➤","color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"[$(name)]\n","color":"$(color)"},{"text":"$(description)\n","color":"white"},{"nbt":"temp.percent.int","storage":"switch:temp","interpret":false,"color":"dark_gray"},{"text":",","color":"dark_gray"},{"nbt":"temp.percent.digits","storage":"switch:temp","interpret":false,"color":"dark_gray"},{"text":"% de réussite soit $(total) joueurs","color":"gray"},{"text":"\n\n[Proposé par $(auteur)]","color":"gray"}]}},{"text":" [$(name)] ","color":"$(color)"},{"text":"avec ","color":"gray"},{"nbt":"temp.percent.int","storage":"switch:temp","interpret":false,"color":"dark_gray"},{"text":",","color":"dark_gray"},{"nbt":"temp.percent.digits","storage":"switch:temp","color":"dark_gray"},{"text":"% de réussite","color":"gray"}]

# Continue loop
data remove storage switch:temp copy[0]
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value $(player)
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop_2 with storage switch:temp copy[0]

