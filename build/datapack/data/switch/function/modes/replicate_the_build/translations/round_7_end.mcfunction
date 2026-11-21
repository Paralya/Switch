
#> switch:modes/replicate_the_build/translations/round_7_end
#
# @within	switch:modes/replicate_the_build/round/7_end
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur ","color":"#FF3347"},{"selector":"@a[tag=!detached,tag=switch.looser]","color":"#FF3347"},{"text":" a été éliminé !","color":"#FF3347"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" The player ","color":"#FF3347"},{"selector":"@a[tag=!detached,tag=switch.looser]","color":"#FF3347"},{"text":" has been eliminated!","color":"#FF3347"}]

