
# French
execute if score #test_mode switch.data matches 0 run tellraw @a[scores={switch.lang=0}] {"text":"Le mode test est maintenant ACTIVÉ","color":"green"}
execute if score #test_mode switch.data matches 1 run tellraw @a[scores={switch.lang=0}] {"text":"Le mode test est maintenant DÉSACTIVÉ","color":"red"}

# English
execute if score #test_mode switch.data matches 0 run tellraw @a[scores={switch.lang=1}] {"text":"Test mode is now ON","color":"green"}
execute if score #test_mode switch.data matches 1 run tellraw @a[scores={switch.lang=1}] {"text":"Test mode is now OFF","color":"red"}

