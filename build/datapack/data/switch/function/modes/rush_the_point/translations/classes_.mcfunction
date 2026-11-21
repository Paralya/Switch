
#> switch:modes/rush_the_point/translations/classes_
#
# @executed	as the player & at current position
#
# @within	switch:modes/rush_the_point/classes/main
#

# French
execute if score @s switch.temp.chosen_class matches 3 unless score @s switch.temp.elytra_cooldown matches 0 run tellraw @s[scores={switch.lang=0}] [{"text":"Erreur : Vous devez attendre encore ","color":"#FF3347"},{"score":{"name":"@s","objective":"switch.temp.elytra_cooldown"},"color":"#C41E3A"},{"text":" secondes avant de choisir cette classe","color":"#FF3347"}]

# English
execute if score @s switch.temp.chosen_class matches 3 unless score @s switch.temp.elytra_cooldown matches 0 run tellraw @s[scores={switch.lang=1}] [{"text":"Error: You have to wait ","color":"#FF3347"},{"score":{"name":"@s","objective":"switch.temp.elytra_cooldown"},"color":"#C41E3A"},{"text":" seconds before choosing this class","color":"#FF3347"}]

