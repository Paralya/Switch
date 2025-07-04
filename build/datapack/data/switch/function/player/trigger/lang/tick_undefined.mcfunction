
#> switch:player/trigger/lang/tick_undefined
#
# @within	switch:player/tick
#

## File attribut: Ignore translations

execute if entity @s[tag=!detached] run function switch:player/trigger/detach/main

effect give @s blindness 5 255 true
effect give @s darkness 5 255 true
effect give @s slowness 5 255 true
effect give @s night_vision 5 255 true

execute if score #tick switch.data matches 5 run function switch:player/trigger/lang/tellraw

