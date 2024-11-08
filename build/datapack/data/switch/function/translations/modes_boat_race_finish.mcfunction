
#> switch:translations/modes_boat_race_finish
#
# @within	switch:modes/boat_race/finish
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"selector":"@s","color":"yellow"},{"text":" a fini la course, il a effectué un temps de "},{"score":{"name":"#minutes","objective":"switch.data"},"color":"aqua"},{"text":"m"},{"score":{"name":"#seconds","objective":"switch.data"},"color":"aqua"},{"text":"s !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" The player "},{"selector":"@s","color":"yellow"},{"text":" finished the race, he clocked a time of "},{"score":{"name":"#minutes","objective":"switch.data"},"color":"aqua"},{"text":"m"},{"score":{"name":"#seconds","objective":"switch.data"},"color":"aqua"},{"text":"s!"}]

