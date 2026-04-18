
execute if entity @e[tag=switch.temp,scores={switch.alive=10}] if entity @s[scores={switch.alive=11},tag=!global.ignore] run function switch:modes/laser_game/shooted_player_red
execute if entity @e[tag=switch.temp,scores={switch.alive=11}] if entity @s[scores={switch.alive=10},tag=!global.ignore] run function switch:modes/laser_game/shooted_player_blue

