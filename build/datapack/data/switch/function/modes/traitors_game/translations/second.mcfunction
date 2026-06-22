
#> switch:modes/traitors_game/translations/second
#
# @within	switch:modes/traitors_game/second
#

# French
execute if score #traitors_game_seconds switch.data matches 90 run tellraw @a[scores={switch.lang=0,switch.temp.role=1}] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Voici l'identité d'un traitre : "},{"selector":"@a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=5..6},sort=random,limit=1]","color":"green"},{"text":" !"}]
execute if score #traitors_game_seconds switch.data matches 180 run tellraw @a[scores={switch.lang=0,switch.temp.role=1}] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Voici l'identité d'un traitre : "},{"selector":"@a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=5..6},sort=random,limit=1]","color":"green"},{"text":" !"}]

# English
execute if score #traitors_game_seconds switch.data matches 90 run tellraw @a[scores={switch.lang=1,switch.temp.role=1}] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" This is the identity of a traitor: "},{"selector":"@a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=5..6},sort=random,limit=1]","color":"green"},{"text":"!"}]
execute if score #traitors_game_seconds switch.data matches 180 run tellraw @a[scores={switch.lang=1,switch.temp.role=1}] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" This is the identity of a traitor: "},{"selector":"@a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=5..6},sort=random,limit=1]","color":"green"},{"text":"!"}]
function switch:translations/common/basic_actionbar

