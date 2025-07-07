
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le thème choisi est "},{"nbt":"current_theme.fr","storage":"switch:main","color":"yellow"},{"text":" !"}]
title @a[scores={switch.lang=0},tag=!detached] times 20 60 20
title @a[scores={switch.lang=0},tag=!detached] title {"text":"Thème choisi","color":"aqua"}
title @a[scores={switch.lang=0},tag=!detached] subtitle {"nbt":"current_theme.fr","storage":"switch:main","color":"yellow"}

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" The chosen theme is "},{"nbt":"current_theme.en","storage":"switch:main","color":"yellow"},{"text":"!"}]
title @a[scores={switch.lang=1},tag=!detached] times 20 60 20
title @a[scores={switch.lang=1},tag=!detached] title {"text":"Theme chosen","color":"aqua"}
title @a[scores={switch.lang=1},tag=!detached] subtitle {"nbt":"current_theme.en","storage":"switch:main","color":"yellow"}

