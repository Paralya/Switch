
function switch:modes/rush_the_point/start_common
tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Rush The Flag, tenez-vous prêt vous avez 10 secondes de préparation !"}]

team modify switch.temp.sidebar.5 suffix [{"text":"Objectif : "},{"text":"5","color":"yellow"},{"text":" drapeaux"}]
scoreboard players set #remaining_time switch.data 610
scoreboard players set #rush_the_point_seconds switch.data -10
scoreboard players set #rush_the_point_ticks switch.data 0
tag @a remove switch.has_blue_flag
tag @a remove switch.has_red_flag

