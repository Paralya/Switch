
execute if entity @s[gamemode=!spectator] run tellraw @a[tag=!detached] [{"selector":"@s","color":"red"},{"text":" est mort, il a survécu "},{"score":{"name":"#block_party_seconds","objective":"switch.data"}},{"text":" secondes !"}]
execute if entity @s[gamemode=!spectator] run scoreboard players add @s switch.stats.deaths 1
execute if entity @s[gamemode=!spectator] run summon lightning_bolt ~ ~-5 ~
execute if entity @s[gamemode=!spectator] run tag @s add switch.temp
execute unless score #test_mode switch.data matches 1 if entity @s[gamemode=!spectator] on attacker if entity @s[type=ravager] run advancement grant @p[tag=switch.temp] only switch:visible/31
execute if entity @s[gamemode=!spectator] run tag @s remove switch.temp
execute unless score #test_mode switch.data matches 1 if entity @s[gamemode=!spectator] if score #block_party_round switch.data matches ..2 run advancement grant @s only switch:visible/35

gamemode spectator @s
execute if entity @s at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
effect clear @s
clear @s

