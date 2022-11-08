##Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #feed_fast_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #feed_fast_seconds switch.data matches 0.. run function switch:modes/feed_fast/xp_bar
execute if score #feed_fast_seconds switch.data matches 0 run function switch:modes/feed_fast/setup
execute if score #feed_fast_seconds switch.data matches 1.. run function switch:modes/feed_fast/food

execute if score #feed_fast_seconds switch.data matches ..-1 run kill @e[type=item]
