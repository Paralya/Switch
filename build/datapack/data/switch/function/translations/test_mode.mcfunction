
#> switch:translations/test_mode
#
# @within	switch:devtools/test_mode
#

# French
execute if score #test_mode switch.data matches 1 run tellraw @a[scores={switch.lang=0}] {"text":"Le mode test est maintenant ACTIVÉ","color":"#2EFF8B"}
execute if score #test_mode switch.data matches 0 run tellraw @a[scores={switch.lang=0}] {"text":"Le mode test est maintenant DÉSACTIVÉ","color":"#FF3347"}

# English
execute if score #test_mode switch.data matches 1 run tellraw @a[scores={switch.lang=1}] {"text":"Test mode is now ON","color":"#2EFF8B"}
execute if score #test_mode switch.data matches 0 run tellraw @a[scores={switch.lang=1}] {"text":"Test mode is now OFF","color":"#FF3347"}

