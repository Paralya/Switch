
gamemode adventure @s
execute if score #reconnect switch.data matches 0 run scoreboard players add #max switch.data 1
execute if score #reconnect switch.data matches 0 run scoreboard players operation @s switch.temp.color = #max switch.data
function switch:modes/simultaneous_jump/teleport

