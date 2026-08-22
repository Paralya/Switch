
#> switch:modes/block_party/translations/record_tellraw
#
# @within	switch:modes/block_party/start with storage switch:records block_party
#
# @args		round (unknown)
#			player (unknown)
#

# French
$execute unless data storage switch:records block_party.runners_up[0] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Record actuel de $(round) manches détenu par $(player)","color":"yellow"}]
$execute if data storage switch:records block_party.runners_up[0] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Record actuel de $(round) manches détenu par $(player)","color":"yellow"},{"text":", grâce à ","color":"gray"},{"nbt":"block_party.runners_up","storage":"switch:records","separator":{"text":", "},"color":"gray"}]

# English
$execute unless data storage switch:records block_party.runners_up[0] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Current record of $(round) rounds held by $(player)","color":"yellow"}]
$execute if data storage switch:records block_party.runners_up[0] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Current record of $(round) rounds held by $(player)","color":"yellow"},{"text":", thanks to ","color":"gray"},{"nbt":"block_party.runners_up","storage":"switch:records","separator":{"text":", "},"color":"gray"}]

