
#> switch:modes/rush_the_flag/translations/flag_drop
#
# @executed	as @e[type=item_display,tag=switch.flag,sort=random] & at @s & positioned ~ ~-2 ~
#
# @within	switch:modes/rush_the_flag/flag_drop
#

# French
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[RushTheFlag]","color":"#FFE60A"},{"text":" Le drapeau "},{"text":"bleu","color":"#2E9BFF"},{"text":" vient de lâcher !"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[RushTheFlag]","color":"#FFE60A"},{"text":" Le drapeau "},{"text":"rouge","color":"#FF3347"},{"text":" vient de lâcher !"}]

# English
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"[RushTheFlag]","color":"#FFE60A"},{"text":" The "},{"text":"blue","color":"#2E9BFF"},{"text":" flag just dropped!"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"[RushTheFlag]","color":"#FFE60A"},{"text":" The "},{"text":"red","color":"#FF3347"},{"text":" flag just dropped!"}]

