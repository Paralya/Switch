
#> switch:translations/modes_pitchout_in_water_with_cooldown
#
# @executed	as @a[tag=!detached,scores={switch.alive=1..,switch.temp.cooldown=1..},predicate=switch:in_water]
#
# @within	switch:modes/pitchout/in_water_with_cooldown
#

# French
tellraw @s[scores={switch.lang=0}] [{"text":"Vous êtes tombé, mais vous aviez encore votre bouclier donc vous ne perdez pas de vie","color":"yellow"}]

# English
tellraw @s[scores={switch.lang=1}] [{"text":"You fell, but you still had your shield so you don't lose any life","color":"yellow"}]

