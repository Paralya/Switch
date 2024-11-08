
#> switch:translations/modes_rush_the_flag_score_point
#
# @within	switch:modes/rush_the_flag/score_point
#

# French
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[RushTheFlag] ","color":"yellow"},{"selector":"@p[tag=switch.has_blue_flag]"},{"text":" vient de sécuriser le drapeau ","color":"aqua"},{"text":"bleu","color":"blue"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[RushTheFlag] ","color":"yellow"},{"selector":"@p[tag=switch.has_red_flag]"},{"text":" vient de sécuriser le drapeau ","color":"aqua"},{"text":"rouge","color":"red"}]

# English
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"[RushTheFlag] ","color":"yellow"},{"selector":"@p[tag=switch.has_blue_flag]"},{"text":" just secured the ","color":"aqua"},{"text":"blue","color":"blue"},{"text":" flag","color":"aqua"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"[RushTheFlag] ","color":"yellow"},{"selector":"@p[tag=switch.has_red_flag]"},{"text":" just secured the ","color":"aqua"},{"text":"red","color":"red"},{"text":" flag","color":"aqua"}]

