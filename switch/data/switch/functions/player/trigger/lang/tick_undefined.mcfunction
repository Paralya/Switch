
## File attribut: Ignore translations

effect give @s blindness 1 255 true
effect give @s darkness 1 255 true
effect give @s slowness 1 255 true
effect give @s night_vision 1 255 true

tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{"text":"Please choose a language by cliking it:","color":"aqua"}]
tellraw @s [{"text":"\n[Français]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.lang set 10"}}]
tellraw @s [{"text":"\n[English]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.lang set 11"}}]
tellraw @s [{"text":"\nYou can always change it later by typing '/lang'\n","color":"aqua"}]

