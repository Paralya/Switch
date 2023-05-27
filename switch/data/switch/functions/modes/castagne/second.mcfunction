
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

# Classic timer
scoreboard players add #castagne_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1
function switch:modes/castagne/xp_bar

