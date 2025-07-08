
#> switch:translations/modes__coupdetat_process_end
#
# @within	switch:modes/_coupdetat/process_end
#

# French
execute if score #detect_end switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Stupéfaction ! ","color":"green"},{"selector":"@s","color":"aqua"},{"text":" a réussi son coup d'état pour lancer le mini-jeu ","color":"green"},{"nbt":"coupdetat.name_fr","storage":"switch:main","color":"yellow"},{"text":" !","color":"green"}]
execute if score #detect_end switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"aqua"},{"text":" a raté son coup d'état ! Il est mort au combat et a perdu ses 100","color":"red"},{"nbt":"SapphireFR","storage":"switch:main","interpret":true},{"text":" investis...","color":"red"}]
execute if score #detect_end switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"aqua"},{"text":" a raté son coup d'état ! Il a manqué de temps et a perdu ses 100","color":"red"},{"nbt":"SapphireFR","storage":"switch:main","interpret":true},{"text":" investis...","color":"red"}]

# English
execute if score #detect_end switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Stupefaction! ","color":"green"},{"selector":"@s","color":"aqua"},{"text":" successfully completed their coup d'état to launch the minigame ","color":"green"},{"nbt":"coupdetat.name_en","storage":"switch:main","color":"yellow"},{"text":"!","color":"green"}]
execute if score #detect_end switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"aqua"},{"text":" failed their coup d'état! They died in battle and lost their 100","color":"red"},{"nbt":"SapphireEN","storage":"switch:main","interpret":true},{"text":" invested...","color":"red"}]
execute if score #detect_end switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"aqua"},{"text":" failed their coup d'état! They ran out of time and lost their 100","color":"red"},{"nbt":"SapphireEN","storage":"switch:main","interpret":true},{"text":" invested...","color":"red"}]

