
kill @e[type=!player,type=!marker]
execute if data storage switch:main {map:"traitor_original"} run spreadplayers 1500 1500 1 100 under 160 false @a
execute if data storage switch:main {map:"zone_51"} run spreadplayers 1500 1500 1 100 under 160 false @a

gamemode survival @a

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Terrain généré, alors tenez-vous prêt !"}]
execute as @a at @s run playsound entity.player.levelup ambient @s

scoreboard players reset #map_generated switch.data

