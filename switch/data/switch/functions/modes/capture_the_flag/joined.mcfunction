
execute if score #reconnect switch.data matches 0 run function switch:modes/capture_the_flag/roles/
execute if score #reconnect switch.data matches 1 run tellraw @s [{"text":"Re ! Tu as fini de rage-quit ?","color":"red"}]
execute if score #reconnect switch.data matches 1 run function switch:modes/capture_the_flag/teleport_to_spawn
tag @s remove switch.has_blue_flag
tag @s remove switch.has_red_flag

