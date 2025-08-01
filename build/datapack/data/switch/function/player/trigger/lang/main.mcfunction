
#> switch:player/trigger/lang/main
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/main
#

## File attribut: Ignore translations

# If player write /lang, show the language selection
execute if score @s switch.trigger.lang matches 1 run function switch:player/trigger/lang/tellraw

# Depending on the score, choose the right language
execute if score @s switch.trigger.lang matches 10 run scoreboard players set @s switch.lang 0
execute if score @s switch.trigger.lang matches 11 run scoreboard players set @s switch.lang 1

# Messages
execute if score @s switch.trigger.lang matches 10 run tellraw @s [{"text":"Vous avez choisi la langue française !\nFaites '/lang' pour re-changer la langue","color":"aqua"}]
execute if score @s switch.trigger.lang matches 11 run tellraw @s [{"text":"You have chosen the English language!\nType '/lang' to change the language","color":"aqua"}]

# Clear the effects and reset the trigger score
scoreboard players set @s switch.trigger.lang 0

