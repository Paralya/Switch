
# Classic timer
scoreboard players add #pillars_of_fortune_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1
function switch:modes/pillars_of_fortune/xp_bar

# Remove mounts
execute if score #pillars_of_fortune_seconds switch.data matches 1 as @a[tag=!detached,gamemode=survival,predicate=switch:has_vehicle] run ride @s dismount
execute if score #pillars_of_fortune_seconds switch.data matches 1 run kill @e[tag=switch.pillars_of_fortune]

# Give random item every 2 seconds
scoreboard players operation #temp switch.data = #pillars_of_fortune_seconds switch.data
scoreboard players operation #temp switch.data %= #2 switch.data
execute if score #pillars_of_fortune_seconds switch.data matches 1.. if score #temp switch.data matches 0 as @a[tag=!detached,gamemode=survival] run loot give @s loot switch:pillars_of_fortune/all

# Forbidden effects
effect clear @a[tag=!detached] mining_fatigue

# Spawn a creeper every 30 seconds after 2 minutes
execute if score #pillars_of_fortune_seconds switch.data matches 120.. run scoreboard players operation #creeper switch.data = #pillars_of_fortune_seconds switch.data
execute if score #pillars_of_fortune_seconds switch.data matches 120.. run scoreboard players operation #creeper switch.data %= #30 switch.data
execute if score #pillars_of_fortune_seconds switch.data matches 120.. if score #creeper switch.data matches 25 at @a[tag=!detached,gamemode=survival] run summon creeper

# Title action bar
function switch:translations/modes_pillars_of_fortune_second

