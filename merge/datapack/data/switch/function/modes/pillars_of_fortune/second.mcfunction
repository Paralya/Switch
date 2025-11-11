
# Classic timer
scoreboard players add #pillars_of_fortune_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1
function switch:modes/pillars_of_fortune/xp_bar

# Remove mounts
execute if score #pillars_of_fortune_seconds switch.data matches 1 as @a[tag=!detached,gamemode=survival,predicate=switch:has_vehicle] run ride @s dismount
execute if score #pillars_of_fortune_seconds switch.data matches 1 run kill @e[tag=switch.pillars_of_fortune]

# Give random item every 3 seconds
scoreboard players operation #temp switch.data = #pillars_of_fortune_seconds switch.data
scoreboard players operation #temp switch.data %= #3 switch.data
execute if score #pillars_of_fortune_seconds switch.data matches 1.. if score #temp switch.data matches 0 as @a[tag=!detached,gamemode=survival] run loot give @s loot switch:random/vanilla

# Forbidden effects
effect clear @a[tag=!detached] mining_fatigue

# Swap (grounded) players positions every minute after 3 minutes, and give 16 mangrove planks
execute if score #pillars_of_fortune_seconds switch.data matches 180.. run scoreboard players operation #swap switch.data = #pillars_of_fortune_seconds switch.data
execute if score #pillars_of_fortune_seconds switch.data matches 180.. run scoreboard players operation #swap switch.data %= #60 switch.data
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 55 as @a[tag=!detached,gamemode=survival] at @s unless block ~ ~-0.1 ~ air run tag @s add switch.to_swap
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 55 if entity @a[tag=switch.to_swap] run function switch:modes/pillars_of_fortune/swap/main
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 55 run give @a[tag=!detached,gamemode=survival] mangrove_planks 16

# Title action bar
function switch:translations/modes_pillars_of_fortune_second

