
# French
execute if score #reconnect switch.data matches 1 run tellraw @s[scores={switch.lang=0}] [{"text":"Re ! Tu as fini de rage-quit ?","color":"red"}]

# English
execute if score #reconnect switch.data matches 1 run tellraw @s[scores={switch.lang=1}] [{"text":"Re! Are you done with rage-quit?","color":"red"}]

