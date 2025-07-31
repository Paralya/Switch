
#> switch:translations/shop_global
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:shop/global
#

# French
tellraw @s[scores={switch.lang=0}] [{"text":"[","color":"#1b1796"},{"text":"Boutique cosmétique Switch","color":"blue"},{"text":"]","color":"#1b1796"},{"text":" - ","color":"blue"},{"score":{"name":"@s","objective":"switch.money"},"color":"blue","underlined":true},{"nbt": "SapphireFR", "storage": "switch:main", "interpret": true},{"text":"\n"}]

tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"#1b1796","click_event":{"action":"run_command","command":"/trigger switch.trigger.shop set 100"}, "hover_event":{"action":"show_text","value":{"text":"Accéder à la boutique cosmétique Pitchout","color":"gray"}}},{"text":"[","color":"#1b1796"},{"text":"Pitchout","color":"blue"},{"text":"]","color":"#1b1796"}]
tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"#1b1796","click_event":{"action":"run_command","command":"/trigger switch.trigger.shop set 200"}, "hover_event":{"action":"show_text","value":{"text":"Accéder à la boutique cosmétique Infected","color":"gray"}}},{"text":"[","color":"#1b1796"},{"text":"Infected","color":"blue"},{"text":"]","color":"#1b1796"}]
tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"#1b1796","click_event":{"action":"run_command","command":"/trigger switch.trigger.shop set 300"}, "hover_event":{"action":"show_text","value":{"text":"Accéder à la boutique cosmétique Spleef","color":"gray"}}},{"text":"[","color":"#1b1796"},{"text":"Spleef","color":"blue"},{"text":"]","color":"#1b1796"}]
tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"#1b1796","click_event":{"action":"run_command","command":"/trigger switch.trigger.shop set 400"}, "hover_event":{"action":"show_text","value":{"text":"Accéder à la boutique cosmétique Sheepwars","color":"gray"}}},{"text":"[","color":"#1b1796"},{"text":"Sheepwars","color":"blue"},{"text":"]","color":"#1b1796"}]
tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"#1b1796","click_event":{"action":"run_command","command":"/trigger switch.trigger.shop set 500"}, "hover_event":{"action":"show_text","value":{"text":"Accéder à la boutique cosmétique Spectres Game","color":"gray"}}},{"text":"[","color":"#1b1796"},{"text":"Spectres Game","color":"blue"},{"text":"]","color":"#1b1796"}]

# English
tellraw @s[scores={switch.lang=1}] [{"text":"[","color":"#1b1796"},{"text":"Switch Cosmetic Shop","color":"blue"},{"text":"]","color":"#1b1796"},{"text":" - ","color":"blue"},{"score":{"name":"@s","objective":"switch.money"},"color":"blue","underlined":true},{"nbt": "SapphireEN", "storage": "switch:main", "interpret": true},{"text":"\n"}]

tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"#1b1796","click_event":{"action":"run_command","command":"/trigger switch.trigger.shop set 100"}, "hover_event":{"action":"show_text","value":{"text":"Access the Pitchout cosmetic shop","color":"gray"}}},{"text":"[","color":"#1b1796"},{"text":"Pitchout","color":"blue"},{"text":"]","color":"#1b1796"}]
tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"#1b1796","click_event":{"action":"run_command","command":"/trigger switch.trigger.shop set 200"}, "hover_event":{"action":"show_text","value":{"text":"Access the Infected cosmetic shop","color":"gray"}}},{"text":"[","color":"#1b1796"},{"text":"Infected","color":"blue"},{"text":"]","color":"#1b1796"}]
tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"#1b1796","click_event":{"action":"run_command","command":"/trigger switch.trigger.shop set 300"}, "hover_event":{"action":"show_text","value":{"text":"Access the Spleef cosmetic shop","color":"gray"}}},{"text":"[","color":"#1b1796"},{"text":"Spleef","color":"blue"},{"text":"]","color":"#1b1796"}]
tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"#1b1796","click_event":{"action":"run_command","command":"/trigger switch.trigger.shop set 400"}, "hover_event":{"action":"show_text","value":{"text":"Access the Sheepwars cosmetic shop","color":"gray"}}},{"text":"[","color":"#1b1796"},{"text":"Sheepwars","color":"blue"},{"text":"]","color":"#1b1796"}]
tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"#1b1796","click_event":{"action":"run_command","command":"/trigger switch.trigger.shop set 500"}, "hover_event":{"action":"show_text","value":{"text":"Access the Spectres Game cosmetic shop","color":"gray"}}},{"text":"[","color":"#1b1796"},{"text":"Spectres Game","color":"blue"},{"text":"]","color":"#1b1796"}]
tellraw @s ""

