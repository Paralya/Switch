
#> switch:modes/rush_the_flag/translations/flag_pickup
#
# @executed	as @e[type=item_display,tag=switch.flag,sort=random] & at @s & positioned ~ ~-2 ~
#
# @within	switch:modes/rush_the_flag/flag_pickup
#

# French
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[RushTheFlag]","color":"#FFE60A"},{"text":" Le drapeau "},{"text":"bleu","color":"#2E9BFF"},{"text":" a été ramassé !"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[RushTheFlag]","color":"#FFE60A"},{"text":" Le drapeau "},{"text":"rouge","color":"#FF3347"},{"text":" a été ramassé !"}]

# English
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"[RushTheFlag]","color":"#FFE60A"},{"text":" The "},{"text":"blue","color":"#2E9BFF"},{"text":" flag has been picked up!"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"[RushTheFlag]","color":"#FFE60A"},{"text":" The "},{"text":"red","color":"#FF3347"},{"text":" flag has been picked up!"}]

