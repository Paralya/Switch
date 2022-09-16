
clone 1409 60 1424 1591 60 1577 1409 174 1424 replace force
clone 1409 61 1424 1591 61 1577 1409 175 1424 replace force
clone 1409 62 1424 1591 62 1577 1409 176 1424 replace force
clone 1409 63 1424 1591 63 1577 1409 177 1424 replace force
clone 1409 64 1424 1591 64 1577 1409 178 1424 replace force

kill @e[type=!player,type=!marker]
tellraw @a [{"text":"Génération : 100% !","color":"gray"}]
tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Terrain généré ! Tenez-vous prêt car vous avez un temps de préparation de 5 secondes !"}]
spreadplayers 1500 1500 1 100 under 160 false @a
gamemode survival @a

execute as @a at @s run playsound entity.player.levelup ambient @s
forceload remove 1409 1424 1591 1577

