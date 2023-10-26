
tellraw @a[tag=!detached] [{"text":"\nLes joueurs ont votés pour changer de map !","color":"red"}]

function switch:modes/kart_racer/stop
function switch:modes/kart_racer/start

execute as @a[tag=!detached] at @s run playsound entity.wither.ambient ambient @s ^ ^ ^20 100

