
playsound block.note_block.bell ambient @s
tellraw @s [{"text":"[Boutique du Switch]","color":"yellow"}]
tellraw @s [{"text":"Vous avez ","color":"gold"},{"score":{"name":"@s","objective":"switch.money"},"color":"yellow"},{"text":" Saphirs\n"}]
tellraw @s [{"text":"➤ ","color":"gold","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 100"},"hoverEvent":{"action":"show_text","contents":{"text":"Accéder à la boutique du Pitchout","color":"gray"}}},{"text":"[Pitchout]","color":"yellow"}]
tellraw @s [{"text":"➤ ","color":"gold","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 200"},"hoverEvent":{"action":"show_text","contents":{"text":"Accéder à la boutique de l'Infecté","color":"gray"}}},{"text":"[Infected]","color":"yellow"}]
tellraw @s [{"text":"➤ ","color":"gold","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 300"},"hoverEvent":{"action":"show_text","contents":{"text":"Accéder à la boutique du Spleef","color":"gray"}}},{"text":"[Spleef]","color":"yellow"}]
tellraw @s [{"text":"➤ ","color":"gold","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 400"},"hoverEvent":{"action":"show_text","contents":{"text":"Accéder à la boutique du SheepWars","color":"gray"}}},{"text":"[SheepWars]","color":"yellow"}]
tellraw @s [{"text":"➤ ","color":"gold","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 500"},"hoverEvent":{"action":"show_text","contents":{"text":"Accéder à la boutique du Spectres Game","color":"gray"}}},{"text":"[Spectres Game]","color":"yellow"}]
tellraw @s ""

