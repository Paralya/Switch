
playsound block.note_block.bell ambient @s
tellraw @s [{"text":"[Boutique du Switch]\n","color":"yellow"}]
tellraw @s [{"text":"➤ ","color":"gold","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 100"},"hoverEvent":{"action":"show_text","contents":{"text":"Accéder à la boutique du Pitchout","color":"gray"}}},{"text":"[Pitchout]","color":"yellow"}]
tellraw @s [{"text":"➤ ","color":"gold","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 200"},"hoverEvent":{"action":"show_text","contents":{"text":"Accéder à la boutique de l'Infecté","color":"gray"}}},{"text":"[Infected]","color":"yellow"}]
tellraw @s ""

