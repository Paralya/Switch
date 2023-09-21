
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #feed_fast_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #feed_fast_seconds switch.data matches 0.. run function switch:modes/feed_fast/xp_bar
execute if score #feed_fast_seconds switch.data matches 0 as @e[limit=2] as @e[limit=2] as @e[limit=2] run summon marker 0 0 0
execute if score #feed_fast_seconds switch.data matches 0 run effect give @a[scores={switch.alive=1..}] hunger infinite 255 true
execute if score #feed_fast_seconds switch.data matches 0 at @e[limit=8] at @a[scores={switch.alive=1..}] run function switch:modes/feed_fast/summon_food
execute if score #feed_fast_seconds switch.data matches 1.. at @a[scores={switch.alive=1..}] run function switch:modes/feed_fast/summon_food
execute if score #feed_fast_seconds switch.data matches 0.. as @e[type=item,nbt={Item:{tag:{switch:{}}}}] run data modify entity @s Glowing set value 1b

execute if score #feed_fast_seconds switch.data matches ..-1 run kill @e[type=item]

