
# Timer
scoreboard players set #tick switch.data 0
scoreboard players add #score switch.reconnect 1
scoreboard players operation @a switch.reconnect = #score switch.reconnect

# Others
execute if score #state switch.data matches 3 run function #switch:signals/second

# Last death timer
scoreboard players add @a switch.last_death 1

# Second Right click reset
scoreboard players reset @a switch.second_right_click

# Stat display life
scoreboard players add @e[type=text_display,tag=switch.stat_display] switch.data 1
kill @e[type=text_display,tag=switch.stat_display,scores={switch.data=60..}]

# Tutorial second loop
execute as @a[team=switch.tutorial] run function switch:player/tutorial/second

