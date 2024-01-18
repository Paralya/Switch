
function switch:player/trigger/

execute unless score @s switch.reconnect = #score switch.reconnect run function switch:player/joined
scoreboard players operation @s switch.last_total_games = total_games switch.last_total_games

execute unless score @s switch.id matches 1.. run function switch:player/set_id

# 1 money per kill
execute if score @s switch.kill matches 1.. run scoreboard players operation @s switch.money += @s switch.kill
execute if score @s switch.kill matches 1.. run scoreboard players reset @s switch.kill

# Detach tick at spawn
execute if entity @s[tag=detached,x=0,y=69,z=0,distance=..200] run function switch:player/tick_detach

