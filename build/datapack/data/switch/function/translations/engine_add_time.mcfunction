
#> switch:translations/engine_add_time
#
# @within	switch:engine/add_time
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"aqua"},{"text":" vient de rajouter 15 secondes au vote !\n"}]
title @a[scores={switch.lang=0},tag=!detached] title {"selector":"@s","color":"aqua"}
title @a[scores={switch.lang=0},tag=!detached] subtitle {"text":"Rajoute 15 secondes au vote !","color":"red"}

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"aqua"},{"text":" just added 15 seconds to the vote!\n"}]
title @a[scores={switch.lang=1},tag=!detached] title {"selector":"@s","color":"aqua"}
title @a[scores={switch.lang=1},tag=!detached] subtitle {"text":"Added 15 seconds to the vote!","color":"red"}

