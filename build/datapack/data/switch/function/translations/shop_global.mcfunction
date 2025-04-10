
#> switch:translations/shop_global
#
# @within	switch:shop/global
#

# French
tellraw @s[scores={switch.lang=0}] [{"text":"[Boutique cosmétique Switch]","color":"yellow"}]
tellraw @s[scores={switch.lang=0}] [{"text":"","color":"gold"},{"score":{"name":"@s","objective":"switch.money"}},{"nbt": "SapphireFR", "storage": "switch:main", "interpret": true},{"text":"\n"}]
tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"gold","click_event":{"action":"run_command","command":"/trigger switch.trigger.shop set 100"}, "hover_event":{"action":"show_text","value":{"text":"Accéder à la boutique cosmétique Pitchout","color":"gray"}}},{"text":"[Pitchout]","color":"yellow"}]
tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"gold","click_event":{"action":"run_command","command":"/trigger switch.trigger.shop set 200"}, "hover_event":{"action":"show_text","value":{"text":"Accéder à la boutique cosmétique Infected","color":"gray"}}},{"text":"[Infected]","color":"yellow"}]
tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"gold","click_event":{"action":"run_command","command":"/trigger switch.trigger.shop set 300"}, "hover_event":{"action":"show_text","value":{"text":"Accéder à la boutique cosmétique Spleef","color":"gray"}}},{"text":"[Spleef]","color":"yellow"}]
tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"gold","click_event":{"action":"run_command","command":"/trigger switch.trigger.shop set 400"}, "hover_event":{"action":"show_text","value":{"text":"Accéder à la boutique cosmétique Sheepwars","color":"gray"}}},{"text":"[Sheepwars]","color":"yellow"}]
tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"gold","click_event":{"action":"run_command","command":"/trigger switch.trigger.shop set 500"}, "hover_event":{"action":"show_text","value":{"text":"Accéder à la boutique cosmétique Spectres Game","color":"gray"}}},{"text":"[Spectres Game]","color":"yellow"}]

# English
tellraw @s[scores={switch.lang=1}] [{"text":"[Switch Cosmetic Shop]","color":"yellow"}]
tellraw @s[scores={switch.lang=1}] [{"text":"","color":"gold"},{"score":{"name":"@s","objective":"switch.money"}},{"nbt": "SapphireEN", "storage": "switch:main", "interpret": true},{"text":"\n"}]
tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"gold","click_event":{"action":"run_command","command":"/trigger switch.trigger.shop set 100"}, "hover_event":{"action":"show_text","value":{"text":"Access the Pitchout cosmetic shop","color":"gray"}}},{"text":"[Pitchout]","color":"yellow"}]
tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"gold","click_event":{"action":"run_command","command":"/trigger switch.trigger.shop set 200"}, "hover_event":{"action":"show_text","value":{"text":"Access the Infected cosmetic shop","color":"gray"}}},{"text":"[Infected]","color":"yellow"}]
tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"gold","click_event":{"action":"run_command","command":"/trigger switch.trigger.shop set 300"}, "hover_event":{"action":"show_text","value":{"text":"Access the Spleef cosmetic shop","color":"gray"}}},{"text":"[Spleef]","color":"yellow"}]
tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"gold","click_event":{"action":"run_command","command":"/trigger switch.trigger.shop set 400"}, "hover_event":{"action":"show_text","value":{"text":"Access the Sheepwars cosmetic shop","color":"gray"}}},{"text":"[Sheepwars]","color":"yellow"}]
tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"gold","click_event":{"action":"run_command","command":"/trigger switch.trigger.shop set 500"}, "hover_event":{"action":"show_text","value":{"text":"Access the Spectres Game cosmetic shop","color":"gray"}}},{"text":"[Spectres Game]","color":"yellow"}]
tellraw @s ""

