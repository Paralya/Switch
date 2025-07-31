
#> switch:translations/modes_build_battle_start
#
# @executed	in switch:build_battle
#
# @within	switch:modes/build_battle/start
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Build Battle, votez pour le thème en ouvrant votre inventaire !"}]
title @a[scores={switch.lang=0},tag=!detached] times 20 60 20
title @a[scores={switch.lang=0},tag=!detached] title {"text":"Vote du Thème","color":"aqua"}
title @a[scores={switch.lang=0},tag=!detached] subtitle {"text":"(Ouvrez votre inventaire !)","color":"yellow"}

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Start the Build Battle game, vote for the theme by opening your inventory!"}]
title @a[scores={switch.lang=1},tag=!detached] times 20 60 20
title @a[scores={switch.lang=1},tag=!detached] title {"text":"Theme Vote","color":"aqua"}
title @a[scores={switch.lang=1},tag=!detached] subtitle {"text":"(Open your inventory!)","color":"yellow"}

