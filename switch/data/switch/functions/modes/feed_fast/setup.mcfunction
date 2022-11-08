## Requis pour le fonctionnement
execute store result score #feed_fast.player_count switch.data if entity @a[tag=switch.alive]

scoreboard players set #feed_fast.marker_count switch.data 0
function switch:modes/feed_fast/setup/summon_marker

## Fin du démarrage de la partie
# Randomisation de la position des markers
execute if score #feed_fast.map switch.data matches 1 run spreadplayers 2500 2500 1 30 under 185 false @e[tag=feed_fast.food_spawn_marker]
execute if score #feed_fast.map switch.data matches 2 run spreadplayers 4000 4000 1 50 under 150 false @e[tag=feed_fast.food_spawn_marker]

# Applique l'effet de faim et de lenteur au joueurs en vie
effect give @a[tag=switch.alive] hunger 1000000 255 true
effect give @a[tag=switch.alive] slowness 1000000 4 true
