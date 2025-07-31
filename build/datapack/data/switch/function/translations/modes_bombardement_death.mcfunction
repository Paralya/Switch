
#> switch:translations/modes_bombardement_death
#
# @executed	as @a[tag=!detached,gamemode=!spectator,distance=..1.5] & at @s
#
# @within	switch:modes/bombardement/death
#

# French
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" est mort, il a survécu "},{"score":{"name":"#bombardement_seconds","objective":"switch.data"}},{"text":" secondes !"}]

# English
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" died, survived "},{"score":{"name":"#bombardement_seconds","objective":"switch.data"}},{"text":" seconds!"}]

