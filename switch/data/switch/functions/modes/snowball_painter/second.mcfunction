
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #snowball_painter_seconds switch.data 1

execute as @a[gamemode=adventure] run function switch:modes/snowball_painter/color/actionbar

