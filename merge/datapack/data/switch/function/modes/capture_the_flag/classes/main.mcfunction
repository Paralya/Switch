
function switch:modes/_common/detect_chosen_class

# Switch case
execute if score @s switch.temp.chosen_class matches 1 run function switch:modes/capture_the_flag/classes/tank
execute if score @s switch.temp.chosen_class matches 2 run function switch:modes/capture_the_flag/classes/warrior
execute if score @s switch.temp.chosen_class matches 3 run function switch:modes/capture_the_flag/classes/archer
execute if score @s switch.temp.chosen_class matches 4 run function switch:modes/capture_the_flag/classes/demolisher
execute if score @s switch.temp.chosen_class matches 5 run function switch:modes/capture_the_flag/classes/chemister
execute if score @s switch.temp.chosen_class matches 1..5 run effect give @s slow_falling 10 0 true

