
execute if score #reconnect switch.data matches 0 run function switch:modes/rush_the_point/roles/
execute if score #reconnect switch.data matches 1 run tellraw @s [{"text":"Re ! Tu as fini de rage-quit ?","color":"red"}]
execute if score #reconnect switch.data matches 1 run function switch:modes/rush_the_point/teleport_to_spawn

