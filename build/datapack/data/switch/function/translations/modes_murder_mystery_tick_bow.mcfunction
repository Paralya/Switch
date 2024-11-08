
#> switch:translations/modes_murder_mystery_tick_bow
#
# @within	switch:modes/murder_mystery/tick_bow
#

# French
execute as @p[gamemode=!spectator,scores={switch.temp.role=1..2},distance=..1] run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"L'arc du détective a été ramassé !","color":"green"}

# English
execute as @p[gamemode=!spectator,scores={switch.temp.role=1..2},distance=..1] run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"The detective's bow has been picked up!","color":"green"}

