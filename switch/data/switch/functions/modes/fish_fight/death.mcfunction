
execute if entity @s[scores={switch.alive=1}] run tellraw @a[tag=!detached] [{"selector":"@s","color":"dark_red"},{"text":" est mort définitivement, il a survécu "},{"score":{"name":"#fish_fight_seconds","objective":"switch.data"}},{"text":" secondes !"}]
execute if entity @s[scores={switch.alive=2}] run tellraw @a[tag=!detached] [{"selector":"@s","color":"red"},{"text":" est tombé, il ne lui reste plus qu'une vie !"}]
execute if entity @s[scores={switch.alive=3}] run tellraw @a[tag=!detached] [{"selector":"@s","color":"red"},{"text":" est tombé, il lui reste seulement 2 vies !"}]

scoreboard players remove @s switch.alive 1
execute if entity @s[scores={switch.alive=1..}] if data storage switch:main {map:"fish_fight_1"} run function switch:modes/fish_fight/map_1/tp_give
execute if entity @s[scores={switch.alive=1..}] if data storage switch:main {map:"fish_fight_halloween"} run function switch:modes/fish_fight/map_halloween/tp_give

function switch:modes/fish_fight/advancements/on_death

execute unless score @s switch.alive matches 1.. run scoreboard players add @s switch.stats.deaths 1
execute unless score @s switch.alive matches 1.. run gamemode spectator @s
execute unless score @s switch.alive matches 1.. at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
execute unless score @s switch.alive matches 1.. run effect clear @s
execute unless score @s switch.alive matches 1.. run clear @s


