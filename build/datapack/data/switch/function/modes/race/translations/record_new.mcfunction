
#> switch:modes/race/translations/record_new
#
# @executed	as @a[tag=!detached,gamemode=!spectator,distance=..20,predicate=switch:has_same_checkpoint]
#
# @within	switch:modes/race/record_save with storage switch:records race.$(map)
#
# @args		seconds (unknown)
#			tens (unknown)
#			units (unknown)
#			player (unknown)
#

# French
$tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Nouveau record de $(seconds),$(tens)$(units) secondes par $(player) !","color":"#FFE60A"}]

# English
$tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" New record of $(seconds).$(tens)$(units) seconds by $(player)!","color":"#FFE60A"}]

