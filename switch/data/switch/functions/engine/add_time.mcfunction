
# Add time & playsound
scoreboard players add #voting_timer switch.data 300
execute as @a at @s run playsound entity.player.levelup ambient @s

# Tellraw & titles
tellraw @a ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"aqua"},{"text":" vient de rajouter 15 secondes au vote !\n"}]
title @a title {"selector":"@s","color":"aqua"}
title @a subtitle {"text":"Rajoute 15 secondes au vote !","color":"red"}

