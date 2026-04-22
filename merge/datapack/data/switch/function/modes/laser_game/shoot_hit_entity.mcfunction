
execute if score #color switch.data matches 0 if entity @s[scores={switch.alive=11},tag=!global.ignore] run function switch:modes/laser_game/shooted_player_red
execute if score #color switch.data matches 1 if entity @s[scores={switch.alive=10},tag=!global.ignore] run function switch:modes/laser_game/shooted_player_blue

