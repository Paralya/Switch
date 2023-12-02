
# Timer
scoreboard players set #tick switch.data 0
scoreboard players add #score switch.reconnect 1
scoreboard players operation @a switch.reconnect = #score switch.reconnect

# Others
execute if score #state switch.data matches 3 run function #switch:signals/second

# Last death timer & play time
scoreboard players add @a switch.last_death 1
scoreboard players add @a switch.play_time 1

# Second Right click reset
scoreboard players reset @a switch.second_right_click

# Stat display life
scoreboard players add @e[type=text_display,tag=switch.stat_display] switch.data 1
kill @e[type=text_display,tag=switch.stat_display,scores={switch.data=60..}]

# Tutorial second loop
execute as @a[team=switch.tutorial] at @s run function switch:player/tutorial/second

# Jumps advancements
advancement grant @a[x=-8,y=81,z=-22,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:jump_green
advancement grant @a[x=22,y=88,z=0,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:jump_white
advancement grant @a[x=-26,y=91,z=15,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:jump_red

