
#> switch:player/trigger/lang/tick_undefined
#
# @within	switch:player/tick
#

## File attribut: Ignore translations

execute if entity @s[tag=!detached] run function switch:player/trigger/detach/

effect give @s blindness 5 255 true
effect give @s darkness 5 255 true
effect give @s slowness 5 255 true
effect give @s night_vision 5 255 true

execute if score #tick switch.data matches 5 run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute if score #tick switch.data matches 5 run tellraw @s [{"text":"Please choose a language by clicking it:","color":"aqua"}]
execute if score #tick switch.data matches 5 run tellraw @s [{"text":"\n[Français]","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.lang set 10"},"hover_event":{"action":"show_text","value":{"text":"[Cliquez pour choisir Français]","color":"yellow"}}}]
execute if score #tick switch.data matches 5 run tellraw @s [{"text":"\n[English]","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.lang set 11"},"hover_event":{"action":"show_text","value":{"text":"[Click to choose English]","color":"yellow"}}}]

