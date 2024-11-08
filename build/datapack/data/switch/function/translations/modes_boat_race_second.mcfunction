
#> switch:translations/modes_boat_race_second
#
# @within	switch:modes/boat_race/second
#

# French
execute if score #boat_race_seconds switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Ouverture de la barrière ! GOOOOOO !"}]

# English
execute if score #boat_race_seconds switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Gate opening! GOOOOOO!"}]

