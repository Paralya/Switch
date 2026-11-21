
#> switch:modes/spectres_game/translations/roles_announcement
#
# @within	switch:modes/spectres_game/roles/announcement
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached,team=switch.temp.visible] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes "},{"text":"visible","color":"#2EFF8B"},{"text":" ! Vous devez trouver tous les spectres et leur faire cracher leur entrailles pour gagner la partie !"}]
tellraw @a[scores={switch.lang=0},tag=!detached,team=switch.temp.spectre] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes un "},{"text":"spectre","color":"#FFE60A"},{"text":" ! Votre objectif est d'exterminer tous les visibles afin de contrôler le serveur ! Pour cela, vous êtes invisible permanent !"}]
tellraw @a[scores={switch.lang=0,switch.temp.spectror=1}] ["",{"text":"-------------------------","color":"#AEBBD0"},{"text":"\n\u25ba","color":"#AEBBD0"},{"text":" SpectrorsGame ","bold":true,"color":"#FF3347"},{"text":":","bold":true,"color":"#AEBBD0"},{"text":" Tu es un Spectror !\nTu dois gagner seul. Pour ce faire, il faudra que tu veilles à trahir au bon moment tes compères spectres.","color":"#C991F0"},{"text":"\n-------------------------","color":"#AEBBD0"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached,team=switch.temp.visible] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" You are "},{"text":"visible","color":"#2EFF8B"},{"text":"! You must find all the spectres and spit out their entrails to win the game!"}]
tellraw @a[scores={switch.lang=1},tag=!detached,team=switch.temp.spectre] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" You're a "},{"text":"spectre","color":"#FFE60A"},{"text":"! Your goal is to exterminate all the visible ones in order to control the server! To achieve this, you are permanently invisible!"}]
tellraw @a[scores={switch.lang=1,switch.temp.spectror=1}] ["",{"text":"-------------------------","color":"#AEBBD0"},{"text":"\n\u25ba","color":"#AEBBD0"},{"text":" SpectrorsGame","bold":true,"color":"#FF3347"},{"text":":","bold":true,"color":"#AEBBD0"},{"text":" You're a Spectror!\nYou must win alone. To do so, you'll need to betray your fellow spectres at the right moment.","color":"#C991F0"},{"text":"\n-------------------------","color":"#AEBBD0"}]

