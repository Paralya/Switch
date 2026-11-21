
#> switch:modes/fireblast/translations/got_power_up
#
# @executed	as @a[tag=!detached,gamemode=!spectator] & at @s
#
# @within	switch:modes/fireblast/got_power_up
#

# French
execute if items entity @s[scores={switch.lang=0}] container.* sugar[custom_data~{switch:{power_up:true}}] run tellraw @s [{"text":"💨 ","color":"#00E5FF"},{"text":"Boost de vitesse activé !","color":"#FFE60A"},{"text":" (20s)","color":"#AEBBD0"}]
execute if items entity @s[scores={switch.lang=0}] container.* blaze_powder[custom_data~{switch:{power_up:true}}] run tellraw @s [{"text":"🔥 ","color":"#FF3347"},{"text":"Rechargement rapide activé !","color":"#FFE60A"},{"text":" (20s)","color":"#AEBBD0"}]
execute if items entity @s[scores={switch.lang=0}] container.* rabbit_foot[custom_data~{switch:{power_up:true}}] run tellraw @s [{"text":"🐰 ","color":"#2EFF8B"},{"text":"Boost de saut activé !","color":"#FFE60A"},{"text":" (20s)","color":"#AEBBD0"}]

# English
execute if items entity @s[scores={switch.lang=1}] container.* sugar[custom_data~{switch:{power_up:true}}] run tellraw @s [{"text":"💨 ","color":"#00E5FF"},{"text":"Speed Boost activated!","color":"#FFE60A"},{"text":" (20s)","color":"#AEBBD0"}]
execute if items entity @s[scores={switch.lang=1}] container.* blaze_powder[custom_data~{switch:{power_up:true}}] run tellraw @s [{"text":"🔥 ","color":"#FF3347"},{"text":"Fast Reload activated!","color":"#FFE60A"},{"text":" (20s)","color":"#AEBBD0"}]
execute if items entity @s[scores={switch.lang=1}] container.* rabbit_foot[custom_data~{switch:{power_up:true}}] run tellraw @s [{"text":"🐰 ","color":"#2EFF8B"},{"text":"Jump Boost activated!","color":"#FFE60A"},{"text":" (20s)","color":"#AEBBD0"}]

