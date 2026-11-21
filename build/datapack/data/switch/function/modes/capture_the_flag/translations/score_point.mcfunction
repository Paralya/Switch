
#> switch:modes/capture_the_flag/translations/score_point
#
# @executed	positioned ~ ~-2 ~
#
# @within	switch:modes/capture_the_flag/score_point
#

# French
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[CaptureTheFlag] ","color":"#FFE60A"},{"selector":"@p[tag=switch.has_blue_flag]"},{"text":" vient de sécuriser le drapeau ","color":"#00E5FF"},{"text":"bleu","color":"#2E9BFF"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[CaptureTheFlag] ","color":"#FFE60A"},{"selector":"@p[tag=switch.has_red_flag]"},{"text":" vient de sécuriser le drapeau ","color":"#00E5FF"},{"text":"rouge","color":"#FF3347"}]

# English
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"[CaptureTheFlag] ","color":"#FFE60A"},{"selector":"@p[tag=switch.has_blue_flag]"},{"text":" just secured the ","color":"#00E5FF"},{"text":"blue","color":"#2E9BFF"},{"text":" flag!","color":"#00E5FF"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"[CaptureTheFlag] ","color":"#FFE60A"},{"selector":"@p[tag=switch.has_red_flag]"},{"text":" just secured the ","color":"#00E5FF"},{"text":"red","color":"#FF3347"},{"text":" flag!","color":"#00E5FF"}]

