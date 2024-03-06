
## File attribut: Ignore translations

# If player write /lang, detach him and remove his lang
execute if score @s switch.trigger.lang matches 1 run scoreboard players reset @s switch.lang
execute if score @s switch.trigger.lang matches 1 run function switch:player/trigger/detach/

# Depending on the score, choose the right language
execute if score @s switch.trigger.lang matches 10 run scoreboard players set @s switch.lang 0
execute if score @s switch.trigger.lang matches 11 run scoreboard players set @s switch.lang 1

# Messages
execute if score @s switch.trigger.lang matches 10 run tellraw @s [{"text":"Vous avez choisi la langue française ! Faites '/lang' pour re-changer la langue","color":"aqua"}]
execute if score @s switch.trigger.lang matches 11 run tellraw @s [{"text":"You have chosen the English language! Type '/lang' to change the language","color":"aqua"}]

# Clear the effects and reset the score
execute if score @s switch.trigger.lang matches 10.. run effect clear @s
scoreboard players set @s switch.trigger.lang 0

