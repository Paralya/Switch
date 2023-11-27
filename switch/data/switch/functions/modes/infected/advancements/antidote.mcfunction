
advancement revoke @s only switch:infected/antidote
execute if data storage switch:main {current_game:"infected"} if entity @s[team=switch.temp.human] run function switch:modes/infected/death/cure
clear @s glass_bottle

