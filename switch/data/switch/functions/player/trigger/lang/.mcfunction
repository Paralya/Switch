
## File attribut: Ignore translations

# Depending on the score, choose the right language
execute if score @s switch.trigger.lang matches 10 run scoreboard players set @s switch.lang 0
execute if score @s switch.trigger.lang matches 11 run scoreboard players set @s switch.lang 1

# Messages
execute if score @s switch.trigger.lang matches 10 run tellraw @s [{"text":"Vous avez choisi la langue française ! Faites '/lang' pour re-changer la langue","color":"aqua"}]
execute if score @s switch.trigger.lang matches 11 run tellraw @s [{"text":"You have chosen the English language! Type '/lang' to change the language","color":"aqua"}]

scoreboard players set @s switch.trigger.lang 0

