
#> switch:player/trigger/lang/tellraw
#
# @within	switch:player/trigger/lang/main
#			switch:player/trigger/lang/tick_undefined
#

## File attribut: Ignore translations

tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{"text":"Please choose a language by clicking it:","color":"aqua"}]
tellraw @s [{"text":"\n[Français]","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.lang set 10"},"hover_event":{"action":"show_text","value":{"text":"[Cliquez pour choisir Français]","color":"yellow"}}}]
tellraw @s [{"text":"\n[English]","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.lang set 11"},"hover_event":{"action":"show_text","value":{"text":"[Click to choose English]","color":"yellow"}}}]

