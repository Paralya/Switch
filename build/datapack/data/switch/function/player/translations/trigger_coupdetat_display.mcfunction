
#> switch:player/translations/trigger_coupdetat_display
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/coupdetat/display
#

# French
tellraw @s[scores={switch.lang=0}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Coup d'état (Prix: 100","color":"#E4ECF7"},{"nbt":"SapphireFR","storage":"switch:main","interpret":true},{"text":") :\n\n","color":"#E4ECF7"},{"text":"➤ Lance un vote pour changer le mini-jeu suivant\n","color":"#AEBBD0"},{"text":"➤ Si accepté (≥50%), affronte un boss après la partie actuelle\n","color":"#AEBBD0"},{"text":"  ➤ Victoire = mini-jeu lancé + 50","color":"#2EFF8B"},{"nbt":"SapphireFR","storage":"switch:main","interpret":true},{"text":" récupérés\n","color":"#2EFF8B"},{"text":"  ➤ Défaite = perte des 100","color":"#FF3347"},{"nbt":"SapphireFR","storage":"switch:main","interpret":true},{"text":"\n","color":"#FF3347"},{"text":"➤ Si non accepté, perte des 100","color":"#FF3347"},{"nbt":"SapphireFR","storage":"switch:main","interpret":true},{"text":"\n\n","color":"#FF3347"},{"text":"Choisissez un mini-jeu pour lancer le coup d'état :","color":"#FFE60A"}]

# English
tellraw @s[scores={switch.lang=1}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Coup d'état (Price: 100","color":"#E4ECF7"},{"nbt":"SapphireEN","storage":"switch:main","interpret":true},{"text":") :\n\n","color":"#E4ECF7"},{"text":"➤ Starts a vote to change the next minigame\n","color":"#AEBBD0"},{"text":"➤ If accepted (≥50%), fight a boss after the current game\n","color":"#AEBBD0"},{"text":"  ➤ Victory = minigame launched + 50","color":"#2EFF8B"},{"nbt":"SapphireEN","storage":"switch:main","interpret":true},{"text":" back\n","color":"#2EFF8B"},{"text":"  ➤ Defeat = lose 100","color":"#FF3347"},{"nbt":"SapphireEN","storage":"switch:main","interpret":true},{"text":"\n","color":"#FF3347"},{"text":"➤ If not accepted, lose 100","color":"#FF3347"},{"nbt":"SapphireEN","storage":"switch:main","interpret":true},{"text":"\n\n","color":"#FF3347"},{"text":"Choose a minigame to start the coup d'état:","color":"#FFE60A"}]

