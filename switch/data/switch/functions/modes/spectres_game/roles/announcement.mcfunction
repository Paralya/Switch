
execute as @a at @s run playsound entity.wither.spawn ambient @s ~ ~ ~ 0.25
tellraw @a[tag=switch.spectres_game.visible] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes "},{"text":"visible","color":"green"},{"text":" ! Vous devez trouver tous les spectres et leur faire cracher leur entrailles pour gagner la partie !"}]
tellraw @a[tag=switch.spectres_game.spectre] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes un "},{"text":"spectre","color":"yellow"},{"text":" ! Votre objectif est d'exterminer tous les visibles afin de contrôler le serveur ! Pour cela, vous êtes invisible permanent !"}]

