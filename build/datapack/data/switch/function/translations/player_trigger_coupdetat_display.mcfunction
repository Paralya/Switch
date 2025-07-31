
#> switch:translations/player_trigger_coupdetat_display
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/coupdetat/display
#

# French
tellraw @s[scores={switch.lang=0}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Coup d'état (Prix: 100","color":"white"},{"nbt":"SapphireFR","storage":"switch:main","interpret":true},{"text":") :\n\n","color":"white"},{"text":"➤ Lance un vote pour changer le mini-jeu suivant\n","color":"gray"},{"text":"➤ Si accepté (≥50%), affronte un boss après la partie actuelle\n","color":"gray"},{"text":"  ➤ Victoire = mini-jeu lancé + 50","color":"green"},{"nbt":"SapphireFR","storage":"switch:main","interpret":true},{"text":" récupérés\n","color":"green"},{"text":"  ➤ Défaite = perte des 100","color":"red"},{"nbt":"SapphireFR","storage":"switch:main","interpret":true},{"text":"\n","color":"red"},{"text":"➤ Si non accepté, perte des 100","color":"red"},{"nbt":"SapphireFR","storage":"switch:main","interpret":true},{"text":"\n\n","color":"red"},{"text":"Choisissez un mini-jeu pour lancer le coup d'état :","color":"yellow"}]

# English
tellraw @s[scores={switch.lang=1}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Coup d'état (Price: 100","color":"white"},{"nbt":"SapphireEN","storage":"switch:main","interpret":true},{"text":") :\n\n","color":"white"},{"text":"➤ Starts a vote to change the next minigame\n","color":"gray"},{"text":"➤ If accepted (≥50%), fight a boss after the current game\n","color":"gray"},{"text":"  ➤ Victory = minigame launched + 50","color":"green"},{"nbt":"SapphireEN","storage":"switch:main","interpret":true},{"text":" back\n","color":"green"},{"text":"  ➤ Defeat = lose 100","color":"red"},{"nbt":"SapphireEN","storage":"switch:main","interpret":true},{"text":"\n","color":"red"},{"text":"➤ If not accepted, lose 100","color":"red"},{"nbt":"SapphireEN","storage":"switch:main","interpret":true},{"text":"\n\n","color":"red"},{"text":"Choose a minigame to start the coup d'état:","color":"yellow"}]

