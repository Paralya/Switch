
# Timer
scoreboard players set #tick switch.data 0
scoreboard players add #score switch.reconnect 1
scoreboard players operation @a switch.reconnect = #score switch.reconnect

# Others
execute if score #state switch.data matches 3 run function #switch:signals/second

