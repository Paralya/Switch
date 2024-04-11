
# Classic timer
scoreboard players add #pillars_of_fortune_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1
function switch:modes/pillars_of_fortune/xp_bar

# Give random item every 2 seconds
scoreboard players operation #temp switch.data = #pillars_of_fortune_seconds switch.data
scoreboard players operation #temp switch.data %= #2 switch.data
execute if score #pillars_of_fortune_seconds switch.data matches 1.. if score #temp switch.data matches 0 run loot give @a[tag=!detached,gamemode=survival] loot switch:pillars_of_fortune/all

# Title action bar
function switch:translations/modes_pillars_of_fortune_second

