
#> switch:player/translations/trigger_rating_display_loop
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/rating/display_loop with storage switch:temp temp
#
# @args		index_hundred (unknown)
#			int (unknown)
#			digits (unknown)
#

# French
$execute if score #digits switch.data matches ..9 run tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"#00E5FF","hover_event":{"action":"show_text","value":{"text":"Cliquez pour noter","color":"#AEBBD0"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index_hundred)"}},{"nbt":"name_fr","storage":"switch:temp","interpret":true,"color":"#12A4B8"},{"text":" avec un score de "},{"text":"$(int).0$(digits)","color":"#FFE60A"},{"text":" (","color":"#AEBBD0"},{"score":{"name":"#nb_ratings","objective":"switch.data"},"color":"#AEBBD0"},{"text":" notes)","color":"#AEBBD0"}]
$execute if score #digits switch.data matches 10.. run tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"#00E5FF","hover_event":{"action":"show_text","value":{"text":"Cliquez pour noter","color":"#AEBBD0"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index_hundred)"}},{"nbt":"name_fr","storage":"switch:temp","interpret":true,"color":"#12A4B8"},{"text":" avec un score de "},{"text":"$(int).$(digits)","color":"#FFE60A"},{"text":" (","color":"#AEBBD0"},{"score":{"name":"#nb_ratings","objective":"switch.data"},"color":"#AEBBD0"},{"text":" notes)","color":"#AEBBD0"}]

# English
$execute if score #digits switch.data matches ..9 run tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"#00E5FF","hover_event":{"action":"show_text","value":{"text":"Click to rate","color":"#AEBBD0"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index_hundred)"}},{"nbt":"name_en","storage":"switch:temp","interpret":true,"color":"#12A4B8"},{"text":" with a score of "},{"text":"$(int).0$(digits)","color":"#FFE60A"},{"text":" (","color":"#AEBBD0"},{"score":{"name":"#nb_ratings","objective":"switch.data"},"color":"#AEBBD0"},{"text":" ratings)","color":"#AEBBD0"}]
$execute if score #digits switch.data matches 10.. run tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"#00E5FF","hover_event":{"action":"show_text","value":{"text":"Click to rate","color":"#AEBBD0"}},"click_event":{"action":"run_command","command":"/trigger switch.trigger.rating set $(index_hundred)"}},{"nbt":"name_en","storage":"switch:temp","interpret":true,"color":"#12A4B8"},{"text":" with a score of "},{"text":"$(int).$(digits)","color":"#FFE60A"},{"text":" (","color":"#AEBBD0"},{"score":{"name":"#nb_ratings","objective":"switch.data"},"color":"#AEBBD0"},{"text":" ratings)","color":"#AEBBD0"}]

