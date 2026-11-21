
#> switch:modes/_coupdetat/translations/process_end
#
# @executed	as @p[tag=switch.coupdetat]
#
# @within	switch:modes/_coupdetat/process_end [ as @p[tag=switch.coupdetat] ]
#

# French
execute if score #detect_end switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Stupéfaction ! ","color":"#2EFF8B"},{"selector":"@s","color":"#00E5FF"},{"text":" a réussi son coup d'état pour lancer le mini-jeu ","color":"#2EFF8B"},{"nbt":"coupdetat.name_fr","storage":"switch:main","interpret":true,"color":"#FFE60A"},{"text":" !\n","color":"#2EFF8B"}]
execute if score #detect_end switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"#00E5FF"},{"text":" a raté son coup d'état ! Il est mort au combat et a perdu ses 100","color":"#FF3347"},{"nbt":"SapphireFR","storage":"switch:main","interpret":true},{"text":" investis...\n","color":"#FF3347"}]
execute if score #detect_end switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"#00E5FF"},{"text":" a raté son coup d'état ! Il a manqué de temps et a perdu ses 100","color":"#FF3347"},{"nbt":"SapphireFR","storage":"switch:main","interpret":true},{"text":" investis...\n","color":"#FF3347"}]

# English
execute if score #detect_end switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Stupefaction! ","color":"#2EFF8B"},{"selector":"@s","color":"#00E5FF"},{"text":" successfully completed their coup d'état to launch the minigame ","color":"#2EFF8B"},{"nbt":"coupdetat.name_en","storage":"switch:main","interpret":true,"color":"#FFE60A"},{"text":"!\n","color":"#2EFF8B"}]
execute if score #detect_end switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"#00E5FF"},{"text":" failed their coup d'état! They died in battle and lost their 100","color":"#FF3347"},{"nbt":"SapphireEN","storage":"switch:main","interpret":true},{"text":" invested...\n","color":"#FF3347"}]
execute if score #detect_end switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"#00E5FF"},{"text":" failed their coup d'état! They ran out of time and lost their 100","color":"#FF3347"},{"nbt":"SapphireEN","storage":"switch:main","interpret":true},{"text":" invested...\n","color":"#FF3347"}]

