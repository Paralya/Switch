
#> switch:translations/modes_rush_the_flag_flag_reset
#
# @executed	as @e[type=item_display,tag=switch.flag,sort=random] & at @s & positioned ~ ~-2 ~
#
# @within	switch:modes/rush_the_flag/flag_reset
#

# French
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" Le drapeau "},{"text":"bleu","color":"blue"},{"text":" est à nouveau en place !"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" Le drapeau "},{"text":"rouge","color":"red"},{"text":" est à nouveau en place !"}]

# English
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" The "},{"text":"blue","color":"blue"},{"text":" flag has been returned!"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" The "},{"text":"red","color":"red"},{"text":" flag has been returned!"}]

