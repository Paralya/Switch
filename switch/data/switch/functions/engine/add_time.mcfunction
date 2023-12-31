
# Add time & playsound
scoreboard players add #voting_timer switch.data 300
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

# Tellraw & titles
tellraw @a ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"aqua"},{"text":" vient de rajouter 15 secondes au vote !\n"}]
title @a[tag=!detached] title {"selector":"@s","color":"aqua"}
title @a[tag=!detached] subtitle {"text":"Rajoute 15 secondes au vote !","color":"red"}

