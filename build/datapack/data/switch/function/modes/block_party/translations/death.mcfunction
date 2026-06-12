
#> switch:modes/block_party/translations/death
#
# @executed	as @a[tag=!detached,gamemode=!spectator,sort=random] & at @s
#
# @within	switch:modes/block_party/death
#

# French
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" est mort, il a survécu "},{"score":{"name":"#block_party_seconds","objective":"switch.data"}},{"text":" secondes !"}]

# English
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" died, survived "},{"score":{"name":"#block_party_seconds","objective":"switch.data"}},{"text":" seconds!"}]

