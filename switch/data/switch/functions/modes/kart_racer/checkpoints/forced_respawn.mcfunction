
function switch:modes/kart_racer/checkpoints/respawn/hard
tellraw @s ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez été téléporté au dernier checkpoint car vous êtes tombé hors map !"}]
execute at @s run playsound stardust:wormhole_potion ambient @s ^ ^ ^3
execute at @s run particle portal ^ ^1 ^1 1 1 1 1 1000

