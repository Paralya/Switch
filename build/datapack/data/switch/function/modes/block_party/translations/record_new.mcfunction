
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
$execute unless data storage switch:records block_party.runners_up[0] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Nouveau record de $(round) manches par $(player)","color":"#FFE60A"},{"text":" !","color":"#FFE60A"}]
$execute if data storage switch:records block_party.runners_up[0] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Nouveau record de $(round) manches par $(player)","color":"#FFE60A"},{"text":", grâce à ","color":"#AEBBD0"},{"nbt":"block_party.runners_up","storage":"switch:records","separator":{"text":", "},"color":"#AEBBD0"},{"text":" !","color":"#FFE60A"}]

# English
$execute unless data storage switch:records block_party.runners_up[0] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" New $(round) round record by $(player)","color":"#FFE60A"},{"text":"!","color":"#FFE60A"}]
$execute if data storage switch:records block_party.runners_up[0] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" New $(round) round record by $(player)","color":"#FFE60A"},{"text":", thanks to ","color":"#AEBBD0"},{"nbt":"block_party.runners_up","storage":"switch:records","separator":{"text":", "},"color":"#AEBBD0"},{"text":"!","color":"#FFE60A"}]

