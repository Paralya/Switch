
#> switch:translations/modes_traitors_game_random_items
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/traitors_game/random_items
#

# French
tellraw @s[scores={switch.lang=0}] {"text":"Item aléatoire reçu !","color":"dark_purple"}

# English
tellraw @s[scores={switch.lang=1}] {"text":"Item random received!","color":"dark_purple"}

