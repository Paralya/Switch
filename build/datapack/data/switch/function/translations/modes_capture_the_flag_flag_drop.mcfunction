
#> switch:translations/modes_capture_the_flag_flag_drop
#
# @within	switch:modes/capture_the_flag/flag_drop
#

# French
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[CaptureTheFlag]","color":"yellow"},{"text":" Le drapeau "},{"text":"bleu","color":"blue"},{"text":" vient de lâcher !"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[CaptureTheFlag]","color":"yellow"},{"text":" Le drapeau "},{"text":"rouge","color":"red"},{"text":" vient de lâcher !"}]

# English
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"[CaptureTheFlag]","color":"yellow"},{"text":" The "},{"text":"blue","color":"blue"},{"text":" flag just dropped!"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"[CaptureTheFlag]","color":"yellow"},{"text":" The "},{"text":"red","color":"red"},{"text":" flag just dropped!"}]

