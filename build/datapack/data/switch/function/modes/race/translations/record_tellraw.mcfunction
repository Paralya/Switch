
#> switch:modes/race/translations/record_tellraw
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:modes/race/record_tellraw with storage switch:records race.$(map)
#
# @args		seconds (unknown)
#			tens (unknown)
#			units (unknown)
#			player (unknown)
#

# French
$tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Record actuel de $(seconds),$(tens)$(units) secondes détenu par $(player)","color":"#FFE60A"}]

# English
$tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Current record of $(seconds).$(tens)$(units) seconds held by $(player)","color":"#FFE60A"}]

