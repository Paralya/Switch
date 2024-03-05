
# French
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[CaptureTheFlag] ","color":"yellow"},{"selector":"@p[tag=switch.has_blue_flag]"},{"text":" vient de sécuriser le drapeau ","color":"aqua"},{"text":"bleu","color":"blue"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[CaptureTheFlag] ","color":"yellow"},{"selector":"@p[tag=switch.has_red_flag]"},{"text":" vient de sécuriser le drapeau ","color":"aqua"},{"text":"rouge","color":"red"}]

