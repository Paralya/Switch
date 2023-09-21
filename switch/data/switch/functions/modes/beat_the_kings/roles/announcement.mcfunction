
execute as @a at @s run playsound entity.wither.spawn ambient @s ~ ~ ~ 0.25
tellraw @a[team=switch.temp.civil] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes "},{"text":"civil","color":"green"},{"text":" ! Vous devez trouver tous les kings et leur faire cracher leur entrailles pour gagner la partie !"}]
tellraw @a[team=switch.temp.king] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes un "},{"text":"king","color":"yellow"},{"text":" ! Votre objectif est d'exterminer tous les civils afin de contrôler le serveur ! Pour cela, vous êtes incivil permanent !"}]

