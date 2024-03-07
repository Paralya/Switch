
# French
$tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Cliquez pour noter","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger switch.trigger.rating set $(index_hundred)"}},{"nbt":"Name","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":" avec un score de "},{"text":"$(int).$(digits)","color":"yellow"}]

# English
$tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Click to rate","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger switch.trigger.rating set $(index_hundred)"}},{"nbt":"Name","storage":"switch:temp","interpret":false, "color":"dark_aqua"},{"text":" with a score of "},{"text":"$(int).$(digits)","color":"yellow"}]

