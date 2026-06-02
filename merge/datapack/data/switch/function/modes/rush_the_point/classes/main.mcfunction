
function switch:modes/_common/detect_chosen_class

# Elytra cooldown
scoreboard players add @s switch.temp.elytra_cooldown 0
function switch:translations/modes_rush_the_point_classes_
execute if score @s switch.temp.chosen_class matches 3 unless score @s switch.temp.elytra_cooldown matches 0 at @s run playsound entity.villager.no ambient @s
execute if score @s switch.temp.chosen_class matches 3 unless score @s switch.temp.elytra_cooldown matches 0 run function switch:modes/rush_the_point/teleport_to_spawn

# Switch case
execute if score @s switch.temp.chosen_class matches 1 run function switch:modes/rush_the_point/classes/guerrier
execute if score @s switch.temp.chosen_class matches 2 run function switch:modes/rush_the_point/classes/archer
execute if score @s switch.temp.chosen_class matches 3 run function switch:modes/rush_the_point/classes/aviateur
execute if score @s switch.temp.chosen_class matches 4 run function switch:modes/rush_the_point/classes/builder
execute if score @s switch.temp.chosen_class matches 5 run function switch:modes/rush_the_point/classes/destroyer

