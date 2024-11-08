
#> switch:translations/modes_beat_the_kings_roles_announcement
#
# @within	switch:modes/beat_the_kings/roles/announcement
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached,team=switch.temp.civil] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes "},{"text":"civil","color":"green"},{"text":" ! Vous devez trouver tous les kings et leur faire cracher leur entrailles pour gagner la partie !"}]
tellraw @a[scores={switch.lang=0},tag=!detached,team=switch.temp.king] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes un "},{"text":"king","color":"yellow"},{"text":" ! Votre objectif est d'exterminer tous les civils afin de contrôler le serveur ! Pour cela, vous êtes incivil permanent !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached,team=switch.temp.civil] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" You are "},{"text":"civil","color":"green"},{"text":"! You must find all the kings and make them spit out their entrails to win the game!"}]
tellraw @a[scores={switch.lang=1},tag=!detached,team=switch.temp.king] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" You're a "},{"text":"king","color":"yellow"},{"text":"! Your goal is to exterminate all civilians in order to control the server! To achieve this, you are permanently uncivil!"}]

