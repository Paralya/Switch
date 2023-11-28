
advancement revoke @s only switch:infected/antidote
execute if score #state switch.data matches 3 if data storage switch:main {current_game:"infected"} if entity @s[team=switch.temp.human] run function switch:modes/infected/death/cure
execute if score #state switch.data matches 3 run clear @s glass_bottle

