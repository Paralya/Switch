
execute if entity @s[gamemode=!spectator] run tellraw @a[tag=!detached] [{"selector":"@s","color":"red"},{"text":" est mort, il a survécu "},{"score":{"name":"#block_party_seconds","objective":"switch.data"}},{"text":" secondes !"}]
execute if entity @s[gamemode=!spectator] run summon lightning_bolt ~ ~-5 ~

gamemode spectator @s
execute if entity @s at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
effect clear @s
clear @s

