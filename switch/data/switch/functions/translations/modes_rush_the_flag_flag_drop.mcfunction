
# French
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" Le drapeau "},{"text":"bleu","color":"blue"},{"text":" vient de lâcher !"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" Le drapeau "},{"text":"rouge","color":"red"},{"text":" vient de lâcher !"}]

# English
execute if entity @s[tag=switch.blue_flag] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" The flag"},{"text":"blue","color":"blue"},{"text":" just dropped!"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" The flag"},{"text":"red","color":"red"},{"text":"just dropped!"}]

