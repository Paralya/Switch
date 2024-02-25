
# Classic timer
scoreboard players add #cigogne_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1
function switch:modes/cigogne/xp_bar

title @a[tag=!detached,gamemode=!spectator] actionbar {"text":"Attention : PVP 1.8","color":"dark_aqua"}

