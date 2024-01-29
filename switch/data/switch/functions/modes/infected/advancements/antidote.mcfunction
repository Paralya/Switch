
advancement revoke @s only switch:infected/antidote
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"infected"} if entity @s[team=switch.temp.human] if score @s switch.temp.infection matches 1.. run function switch:modes/infected/death/cure

