
function switch:translations/modes_pitchout_death

scoreboard players remove @s switch.alive 1
execute if entity @s[scores={switch.alive=1..}] if data storage switch:main {map:"pitchout_1"} run function switch:modes/pitchout/map_1/tp_give
execute if entity @s[scores={switch.alive=1..}] if data storage switch:main {map:"pitchout_halloween"} run function switch:modes/pitchout/map_halloween/tp_give

function switch:modes/pitchout/advancements/on_death

execute unless score @s switch.alive matches 1.. run scoreboard players add @s switch.stats.deaths 1
execute unless score @s switch.alive matches 1.. run gamemode spectator @s
execute unless score @s switch.alive matches 1.. at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
execute unless score @s switch.alive matches 1.. run effect clear @s
execute unless score @s switch.alive matches 1.. run clear @s


