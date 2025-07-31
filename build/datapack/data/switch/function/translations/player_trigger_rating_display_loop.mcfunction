
#> switch:translations/player_trigger_rating_display_loop
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/rating/display_loop with storage switch:temp temp
#

# French
$execute if score #digits switch.data matches ..9 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"aqua","hover_event":{"action":"show_text","value":{"text":"Cliquez pour noter","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index_hundred)"}},{"nbt":"name_fr","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":" avec un score de "},{"text":"$(int).0$(digits)","color":"yellow"},{"text":" (","color":"gray"},{"score":{"name":"#nb_ratings","objective":"switch.data"},"color":"gray"},{"text":" notes)","color":"gray"}]
$execute if score #digits switch.data matches 10.. run tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"aqua","hover_event":{"action":"show_text","value":{"text":"Cliquez pour noter","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index_hundred)"}},{"nbt":"name_fr","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":" avec un score de "},{"text":"$(int).$(digits)","color":"yellow"},{"text":" (","color":"gray"},{"score":{"name":"#nb_ratings","objective":"switch.data"},"color":"gray"},{"text":" notes)","color":"gray"}]

# English
$execute if score #digits switch.data matches ..9 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"aqua","hover_event":{"action":"show_text","value":{"text":"Click to rate","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index_hundred)"}},{"nbt":"name_en","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":" with a score of "},{"text":"$(int).0$(digits)","color":"yellow"},{"text":" (","color":"gray"},{"score":{"name":"#nb_ratings","objective":"switch.data"},"color":"gray"},{"text":" ratings)","color":"gray"}]
$execute if score #digits switch.data matches 10.. run tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"aqua","hover_event":{"action":"show_text","value":{"text":"Click to rate","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index_hundred)"}},{"nbt":"name_en","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":" with a score of "},{"text":"$(int).$(digits)","color":"yellow"},{"text":" (","color":"gray"},{"score":{"name":"#nb_ratings","objective":"switch.data"},"color":"gray"},{"text":" ratings)","color":"gray"}]

