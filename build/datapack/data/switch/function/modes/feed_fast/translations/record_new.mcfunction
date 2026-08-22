
#> switch:modes/feed_fast/translations/record_new
#
# @within	switch:modes/feed_fast/record_save with storage switch:records feed_fast
#
# @args		points (unknown)
#			player (unknown)
#

# French
$tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Nouveau record de $(points) points par $(player) !","color":"yellow"}]

# English
$tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" New record of $(points) points by $(player)!","color":"yellow"}]

