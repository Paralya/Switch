
## File attribut: Ignore translations

effect give @s blindness 5 255 true
effect give @s darkness 5 255 true
effect give @s slowness 5 255 true
effect give @s night_vision 5 255 true

tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{"text":"Please choose a language by cliking it:","color":"aqua"}]
tellraw @s [{"text":"\n[Français]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.lang set 10"},"hoverEvent":{"action":"show_text","value":{"text":"[Cliquez pour choisir Français]","color":"yellow"}}}]
tellraw @s [{"text":"\n[English]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.lang set 11"},"hoverEvent":{"action":"show_text","value":{"text":"[Click to choose English]","color":"yellow"}}}]
tellraw @s [{"text":"\nYou can always change it later by typing '/lang'\n","color":"aqua"}]

