
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

# Classic timer
scoreboard players add #border_run_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1
function switch:modes/border_run/xp_bar

