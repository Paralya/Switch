
#> switch:translations/modes_rush_the_point_classes_
#
# @within	switch:modes/rush_the_point/classes/
#

# French
execute if score @s switch.temp.chosen_class matches 3 unless score @s switch.temp.elytra_cooldown matches 0 run tellraw @s[scores={switch.lang=0}] [{"text":"Erreur : Vous devez attendre encore ","color":"red"},{"score":{"name":"@s","objective":"switch.temp.elytra_cooldown"},"color":"dark_red"},{"text":" secondes avant de choisir cette classe","color":"red"}]

# English
execute if score @s switch.temp.chosen_class matches 3 unless score @s switch.temp.elytra_cooldown matches 0 run tellraw @s[scores={switch.lang=1}] [{"text":"Error: You have to wait ","color":"red"},{"score":{"name":"@s","objective":"switch.temp.elytra_cooldown"},"color":"dark_red"},{"text":" seconds before choosing this class","color":"red"}]

