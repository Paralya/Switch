
#> switch:translations/modes_replicate_the_build_round_7_end
#
# @within	switch:modes/replicate_the_build/round/7_end
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur ","color":"red"},{"selector":"@a[tag=!detached,tag=switch.looser]","color":"red"},{"text":" a été éliminé !","color":"red"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" The player ","color":"red"},{"selector":"@a[tag=!detached,tag=switch.looser]","color":"red"},{"text":" has been eliminated!","color":"red"}]

