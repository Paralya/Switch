
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

# Timer
scoreboard players add #border_run_seconds switch.data 1

# XP Bar
execute if score #border_run_seconds switch.data matches 0.. run function switch:modes/border_run/xp_bar

