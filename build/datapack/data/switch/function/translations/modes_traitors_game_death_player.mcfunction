
#> switch:translations/modes_traitors_game_death_player
#
# @within	switch:modes/traitors_game/death/player
#

# French
tellraw @s[scores={switch.lang=0,switch.alive=1..,switch.temp.role=4}] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Vous êtes mort mais votre capacité de "},{"text":"ninja","color":"green"},{"text":" vous permet de revenir dans la partie !"}]

# English
tellraw @s[scores={switch.lang=1,switch.alive=1..,switch.temp.role=4}] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" You're dead but your "},{"text":"ninja","color":"green"},{"text":" ability lets you get back in the game!"}]

