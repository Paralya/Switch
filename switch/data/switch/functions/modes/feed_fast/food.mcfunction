# Hummm
scoreboard players add #feed_fast.is_x5_sec switch.data 1
execute if score #feed_fast.is_x5_sec switch.data matches 5 run function switch:modes/feed_fast/food/clearing

# Food time :D
execute at @e[tag=feed_fast.food_spawn_marker,sort=random] run function switch:modes/feed_fast/food/summon_food

# Limite le nombre de marker à nbPlayers - 1 si nbPlayers > 1 sinon 1
execute store result score #feed_fast.player_count switch.data if entity @a[tag=switch.alive]
execute if score #feed_fast.player_count switch.data matches 2.. run scoreboard players operation #feed_fast.player_count switch.data -= #1 switch.data

execute if score #feed_fast.marker_count switch.data > #feed_fast.player_count switch.data run function switch:modes/feed_fast/food/kill_marker

# Rerandomisation de la position
execute if score #feed_fast.map switch.data matches 1 run spreadplayers 2500 2500 1 30 under 185 false @e[tag=feed_fast.food_spawn_marker]
execute if score #feed_fast.map switch.data matches 2 run spreadplayers 4000 4000 1 50 under 150 false @e[tag=feed_fast.food_spawn_marker]
