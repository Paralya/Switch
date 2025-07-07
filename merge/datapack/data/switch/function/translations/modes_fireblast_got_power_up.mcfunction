
# French
execute if items entity @s[scores={switch.lang=0}] container.* sugar[custom_data~{switch:{power_up:true}}] run tellraw @s [{"text":"💨 ","color":"aqua"},{"text":"Boost de vitesse activé !","color":"yellow"},{"text":" (20s)","color":"gray"}]
execute if items entity @s[scores={switch.lang=0}] container.* blaze_powder[custom_data~{switch:{power_up:true}}] run tellraw @s [{"text":"🔥 ","color":"red"},{"text":"Rechargement rapide activé !","color":"yellow"},{"text":" (20s)","color":"gray"}]
execute if items entity @s[scores={switch.lang=0}] container.* rabbit_foot[custom_data~{switch:{power_up:true}}] run tellraw @s [{"text":"🐰 ","color":"green"},{"text":"Boost de saut activé !","color":"yellow"},{"text":" (20s)","color":"gray"}]

# English
execute if items entity @s[scores={switch.lang=1}] container.* sugar[custom_data~{switch:{power_up:true}}] run tellraw @s [{"text":"💨 ","color":"aqua"},{"text":"Speed Boost activated!","color":"yellow"},{"text":" (20s)","color":"gray"}]
execute if items entity @s[scores={switch.lang=1}] container.* blaze_powder[custom_data~{switch:{power_up:true}}] run tellraw @s [{"text":"🔥 ","color":"red"},{"text":"Fast Reload activated!","color":"yellow"},{"text":" (20s)","color":"gray"}]
execute if items entity @s[scores={switch.lang=1}] container.* rabbit_foot[custom_data~{switch:{power_up:true}}] run tellraw @s [{"text":"🐰 ","color":"green"},{"text":"Jump Boost activated!","color":"yellow"},{"text":" (20s)","color":"gray"}]

