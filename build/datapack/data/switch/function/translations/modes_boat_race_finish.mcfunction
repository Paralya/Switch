
#> switch:translations/modes_boat_race_finish
#
# @executed	as @a[tag=!detached,gamemode=!spectator,scores={switch.alive=1},x=5033,y=105,z=5000,dx=3,dy=4,dz=4] & at @s
#
# @within	switch:modes/boat_race/finish
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur "},{"selector":"@s","color":"yellow"},{"text":" a fini la course, il a effectué un temps de "},{"score":{"name":"#minutes","objective":"switch.data"},"color":"aqua"},{"text":"m"},{"score":{"name":"#seconds","objective":"switch.data"},"color":"aqua"},{"text":"s !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" The player "},{"selector":"@s","color":"yellow"},{"text":" finished the race, he clocked a time of "},{"score":{"name":"#minutes","objective":"switch.data"},"color":"aqua"},{"text":"m"},{"score":{"name":"#seconds","objective":"switch.data"},"color":"aqua"},{"text":"s!"}]

