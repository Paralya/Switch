
#> switch:translations/modes_replicate_the_build_utils_finish_building_player
#
# @executed	as @a[scores={switch.alive=1..},gamemode=survival]
#
# @within	switch:modes/replicate_the_build/utils/finish_building_player
#

# French
tellraw @s[scores={switch.lang=0}] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Parfait ! En ","color":"green"},{"nbt":"temp","storage":"switch:rtb","color":"green"},{"text":" secondes","color":"green"}]

# English
tellraw @s[scores={switch.lang=1}] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Perfect! In ","color":"green"},{"nbt":"temp","storage":"switch:rtb","color":"green"},{"text":" seconds","color":"green"}]

