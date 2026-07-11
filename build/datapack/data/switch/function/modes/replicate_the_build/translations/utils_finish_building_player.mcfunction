
#> switch:modes/replicate_the_build/translations/utils_finish_building_player
#
# @executed	as @a[scores={switch.alive=1..},gamemode=survival]
#
# @within	switch:modes/replicate_the_build/utils/finish_building_player with storage switch:rtb
#
# @args		temp (unknown)
#

# French
$tellraw @s[scores={switch.lang=0}] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Parfait ! En $(temp) secondes","color":"green"}]

# English
$tellraw @s[scores={switch.lang=1}] [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Perfect! In $(temp) seconds","color":"green"}]

