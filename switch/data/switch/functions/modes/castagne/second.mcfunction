
# Classic timer
scoreboard players add #castagne_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1
function switch:modes/castagne/xp_bar

title @a[tag=!detached,gamemode=!spectator] actionbar {"text":"Attention : PVP 1.9+","color":"red"}

