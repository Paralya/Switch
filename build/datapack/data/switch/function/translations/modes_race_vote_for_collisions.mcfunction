
#> switch:translations/modes_race_vote_for_collisions
#
# @executed	as @a[tag=!detached,scores={switch.right_click=1..}]
#
# @within	switch:modes/race/vote_for_collisions
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" a voté pour activer les collisions joueurs ["},{"score":{"name":"#votes","objective":"switch.data"},"color":"aqua"},{"text":"/"},{"score":{"name":"#votes_max","objective":"switch.data"},"color":"aqua"},{"text":"]"}]
execute if score #votes switch.data >= #votes_max switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Collisions entre joueurs activées !\n"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" voted to enable player collisions ["},{"score":{"name":"#votes","objective":"switch.data"},"color":"aqua"},{"text":"/"},{"score":{"name":"#votes_max","objective":"switch.data"},"color":"aqua"},{"text":"]"}]
execute if score #votes switch.data >= #votes_max switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Player collisions enabled!\n"}]

