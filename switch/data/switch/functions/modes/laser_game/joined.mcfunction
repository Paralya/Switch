
execute if score #reconnect switch.data matches 0 run function switch:modes/laser_game/teleport_players
execute if score #reconnect switch.data matches 1 run tellraw @s [{"text":"Re ! Tu as fini de rage-quit ?","color":"red"}]

