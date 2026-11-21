
#> switch:modes/spleef/translations/death
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:modes/spleef/death
#

# French
execute if entity @s[gamemode=!spectator] if score @s switch.temp.trapped_timer matches 1.. if entity @p[tag=switch.spleef_killer] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@p[tag=switch.spleef_killer]","color":"#FFE60A"},{"text":" a fait tomber "},{"selector":"@s","color":"#FF3347"},{"text":", piégé dans la neige poudreuse, dans la lave ! (survécu "},{"score":{"name":"#spleef_seconds","objective":"switch.data"}},{"text":"s)"}]
execute if entity @s[gamemode=!spectator] if score @s switch.temp.trapped_timer matches 1.. unless entity @p[tag=switch.spleef_killer] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"#FF3347"},{"text":" s'est retrouvé coincé dans la neige poudreuse et est tombé dans la lave ! (survécu "},{"score":{"name":"#spleef_seconds","objective":"switch.data"}},{"text":"s)"}]
execute if entity @s[gamemode=!spectator] unless score @s switch.temp.trapped_timer matches 1.. if entity @p[tag=switch.spleef_killer] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@p[tag=switch.spleef_killer]","color":"#FFE60A"},{"text":" a creusé sous "},{"selector":"@s","color":"#FF3347"},{"text":" qui est tombé dans la lave ! (survécu "},{"score":{"name":"#spleef_seconds","objective":"switch.data"}},{"text":"s)"}]
execute if entity @s[gamemode=!spectator] unless score @s switch.temp.trapped_timer matches 1.. unless entity @p[tag=switch.spleef_killer] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"#FF3347"},{"text":" est mort, il a survécu "},{"score":{"name":"#spleef_seconds","objective":"switch.data"}},{"text":" secondes !"}]

# English
execute if entity @s[gamemode=!spectator] if score @s switch.temp.trapped_timer matches 1.. if entity @p[tag=switch.spleef_killer] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@p[tag=switch.spleef_killer]","color":"#FFE60A"},{"text":" knocked "},{"selector":"@s","color":"#FF3347"},{"text":", stuck in powder snow, into the lava! (survived "},{"score":{"name":"#spleef_seconds","objective":"switch.data"}},{"text":"s)"}]
execute if entity @s[gamemode=!spectator] if score @s switch.temp.trapped_timer matches 1.. unless entity @p[tag=switch.spleef_killer] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"#FF3347"},{"text":" got stuck in powder snow and fell into the lava! (survived "},{"score":{"name":"#spleef_seconds","objective":"switch.data"}},{"text":"s)"}]
execute if entity @s[gamemode=!spectator] unless score @s switch.temp.trapped_timer matches 1.. if entity @p[tag=switch.spleef_killer] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@p[tag=switch.spleef_killer]","color":"#FFE60A"},{"text":" dug under "},{"selector":"@s","color":"#FF3347"},{"text":" who fell into the lava! (survived "},{"score":{"name":"#spleef_seconds","objective":"switch.data"}},{"text":"s)"}]
execute if entity @s[gamemode=!spectator] unless score @s switch.temp.trapped_timer matches 1.. unless entity @p[tag=switch.spleef_killer] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"#FF3347"},{"text":" died, survived "},{"score":{"name":"#spleef_seconds","objective":"switch.data"}},{"text":" seconds!"}]

