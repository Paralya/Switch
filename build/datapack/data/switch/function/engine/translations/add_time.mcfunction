
#> switch:engine/translations/add_time
#
# @within	switch:engine/add_time
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"#00E5FF"},{"text":" vient de rajouter 15 secondes au vote !\n"}]
title @a[scores={switch.lang=0},tag=!detached] title {"selector":"@s","color":"#00E5FF"}
title @a[scores={switch.lang=0},tag=!detached] subtitle {"text":"Rajoute 15 secondes au vote !","color":"#FF3347"}

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"#00E5FF"},{"text":" just added 15 seconds to the vote!\n"}]
title @a[scores={switch.lang=1},tag=!detached] title {"selector":"@s","color":"#00E5FF"}
title @a[scores={switch.lang=1},tag=!detached] subtitle {"text":"Added 15 seconds to the vote!","color":"#FF3347"}

