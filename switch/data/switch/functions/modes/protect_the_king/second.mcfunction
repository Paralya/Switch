
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #protect_the_king_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #protect_the_king_seconds switch.data matches 0.. run function switch:modes/protect_the_king/xp_bar
execute if score #protect_the_king_seconds switch.data matches 0.. run effect give @a[tag=switch.king] glowing infinite 255 true

