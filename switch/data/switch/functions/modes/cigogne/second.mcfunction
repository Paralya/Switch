
# Classic timer
scoreboard players add #cigogne_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1
function switch:modes/cigogne/xp_bar

function switch:translations/modes_cigogne_second

# Kill reward
give @a[tag=!detached,gamemode=!spectator,scores={switch.temp.playerKill=1..}] golden_apple 4
scoreboard players reset @a[scores={switch.temp.playerKill=1..}] switch.temp.playerKill

