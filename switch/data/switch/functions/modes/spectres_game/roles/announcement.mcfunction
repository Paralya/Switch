
execute as @a[tag=!detached] at @s run playsound entity.wither.spawn ambient @s ~ ~ ~ 0.25
tellraw @a[tag=!detached,team=switch.temp.visible] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes "},{"text":"visible","color":"green"},{"text":" ! Vous devez trouver tous les spectres et leur faire cracher leur entrailles pour gagner la partie !"}]
tellraw @a[tag=!detached,team=switch.temp.spectre] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes un "},{"text":"spectre","color":"yellow"},{"text":" ! Votre objectif est d'exterminer tous les visibles afin de contrôler le serveur ! Pour cela, vous êtes invisible permanent !"}]

