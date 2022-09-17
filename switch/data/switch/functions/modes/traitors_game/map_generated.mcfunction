
kill @e[type=!player,type=!marker]
spreadplayers 1500 1500 1 100 under 160 false @a
gamemode survival @a

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Terrain généré ! Tenez-vous prêt car vous avez un temps de préparation de 5 secondes !"}]
execute as @a at @s run playsound entity.player.levelup ambient @s

scoreboard players reset #map_generated switch.data

