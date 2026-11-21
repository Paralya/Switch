
#> switch:modes/block_party/core/pick_abort
#
# @within	switch:modes/block_party/core/give_block
#			switch:modes/block_party/core/pick_random_art
#

tellraw @a[tag=convention.debug] ["",{"nbt":"ParalyaError","storage":"switch:main","interpret":true},{"text":" Block Party: no playable pixel art, the game is cancelled","color":"#FF3347"}]
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"ParalyaError","storage":"switch:main","interpret":true},{"text":" Impossible de choisir une couleur, la partie est annulée. Veuillez prévenir Stoupy."}]
tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"ParalyaError","storage":"switch:main","interpret":true},{"text":" No color could be chosen, the game is cancelled. Please tell Stoupy."}]
kill @s[type=marker]
function switch:engine/restart

