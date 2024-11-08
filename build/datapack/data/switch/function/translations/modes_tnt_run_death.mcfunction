
#> switch:translations/modes_tnt_run_death
#
# @within	switch:modes/tnt_run/death
#

# French
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" est mort, il a survécu "},{"score":{"name":"#tnt_run_seconds","objective":"switch.data"}},{"text":" secondes !"}]

# English
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" died, survived "},{"score":{"name":"#tnt_run_seconds","objective":"switch.data"}},{"text":" seconds!"}]

