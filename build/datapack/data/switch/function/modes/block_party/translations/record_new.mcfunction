
#> switch:modes/block_party/translations/record_new
#
# @executed	as @a[tag=!detached,gamemode=!spectator]
#
# @within	switch:modes/block_party/record_save with storage switch:records block_party
#
# @args		round (unknown)
#			player (unknown)
#

# French
$execute unless data storage switch:records block_party.runners_up[0] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Nouveau record de $(round) manches par $(player)","color":"yellow"},{"text":" !","color":"yellow"}]
$execute if data storage switch:records block_party.runners_up[0] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Nouveau record de $(round) manches par $(player)","color":"yellow"},{"text":", grâce à ","color":"gray"},{"nbt":"block_party.runners_up","storage":"switch:records","separator":{"text":", "},"color":"gray"},{"text":" !","color":"yellow"}]

# English
$execute unless data storage switch:records block_party.runners_up[0] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" New $(round) round record by $(player)","color":"yellow"},{"text":"!","color":"yellow"}]
$execute if data storage switch:records block_party.runners_up[0] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" New $(round) round record by $(player)","color":"yellow"},{"text":", thanks to ","color":"gray"},{"nbt":"block_party.runners_up","storage":"switch:records","separator":{"text":", "},"color":"gray"},{"text":"!","color":"yellow"}]

