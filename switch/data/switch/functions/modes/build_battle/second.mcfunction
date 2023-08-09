
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #build_battle_seconds switch.data 1

execute as @a[gamemode=adventure] run function switch:modes/build_battle/color/actionbar

