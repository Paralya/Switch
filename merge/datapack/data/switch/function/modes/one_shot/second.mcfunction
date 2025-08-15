
# Timers
scoreboard players add #one_shot_seconds switch.data 1
execute if score #remaining_time switch.data matches 0.. run scoreboard players remove #remaining_time switch.data 1
function switch:modes/one_shot/xp_bar

# Give items on start
execute if score #one_shot_seconds switch.data matches 0 as @a[tag=!detached] at @s run function switch:modes/one_shot/give_items
execute if score #one_shot_seconds switch.data matches 0 run clear @a[tag=!detached] arrow
execute if score #one_shot_seconds switch.data matches 1 run give @a[tag=!detached] arrow 1

# Glowing effect for everyone every 31 seconds
scoreboard players operation #temp switch.data = #one_shot_seconds switch.data
scoreboard players operation #temp switch.data %= #31 switch.data
execute if score #temp switch.data matches 0 run effect give @a[tag=!detached,gamemode=!spectator] glowing 4 2 true

# PVP Warning
function switch:translations/modes_one_shot_second

