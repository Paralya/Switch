
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #twittos_de_merde_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1
execute if score #phase_de_vote switch.data matches 1.. run scoreboard players add #timer_phase_de_vote switch.data 1
scoreboard players add #twittos_de_merde_seconds_mdj switch.data 1
execute if score #twittos_de_merde_seconds_mdj switch.data matches 30.. run function switch:modes/twittos_de_merde/start_vote
execute if score #twittos_de_merde_seconds switch.data matches 0.. run function switch:modes/twittos_de_merde/xp_bar
execute if score #twittos_de_merde_seconds switch.data matches 0 as @a at @s run function switch:modes/twittos_de_merde/give_items
execute if entity @a[scores={passage_vote=0..1}]

# Spawning creepers
# execute if score #twittos_de_merde_seconds switch.data matches 0.. at @e[type=marker,tag=switch.selected_map,limit=1] run summon creeper ~ ~ ~ {AbsorptionAmount:2048f,Tags:["switch.new"],Attributes:[{Name:"generic.follow_range",Base:128}]}
# execute if score #twittos_de_merde_seconds switch.data matches 0.. at @e[type=marker,tag=switch.selected_map,limit=1] run summon creeper ~ ~ ~ {AbsorptionAmount:2048f,Tags:["switch.new"],Attributes:[{Name:"generic.follow_range",Base:128}]}
# execute if score #twittos_de_merde_seconds switch.data matches 0.. if data storage switch:main {map:"abandoned_city_spawn_circle"} run spreadplayers 43000 43000 50 50 under 99 false @e[type=creeper,tag=switch.new]
# execute if score #twittos_de_merde_seconds switch.data matches 0.. if data storage switch:main {map:"abandoned_city_spawn_circle"} run spreadplayers 43000 43000 50 50 under 99 false @e[type=creeper,tag=switch.new]
# execute if score #twittos_de_merde_seconds switch.data matches 0.. if data storage switch:main {map:"abandoned_city_spawn_circle"} as @e[type=creeper,tag=switch.new] at @s run tp @s ~ 110 ~
# execute if score #twittos_de_merde_seconds switch.data matches 0.. run tag @e[type=creeper,tag=switch.new] remove switch.new
# execute if score #twittos_de_merde_seconds switch.data matches ..-1 run tp @e[type=!player,type=!marker] 0 -10000 0
# execute if score #twittos_de_merde_seconds switch.data matches ..-1 run kill @e[type=!player,type=!marker]

