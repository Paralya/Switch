
# Message d'annonce
tellraw @a ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" 60 secondes sont passées, réduction de la bordure !"}]
execute as @a at @s run playsound entity.experience_orb.pickup ambient @s

# Summon entity depending on map
execute if data storage switch:main {map:"spleef_1"} run summon marker 28020 106 28020 {Tags:["switch.spleef_border"],data:{border_size:41}}

# Variables
execute store result score #border_remaining_side switch.data run data get entity @e[type=marker,tag=switch.spleef_border,limit=1] data.border_size
scoreboard players set #border_progress switch.data 0
scoreboard players set #border_side switch.data 0
scoreboard players set #border_laps switch.data 0

