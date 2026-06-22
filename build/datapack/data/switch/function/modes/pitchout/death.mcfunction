
#> switch:modes/pitchout/death
#
# @within	switch:modes/pitchout/joined
#			switch:modes/pitchout/tick [ as @a[tag=!detached,scores={switch.alive=1..},predicate=switch:in_water,sort=random] ]
#

function switch:modes/pitchout/translations/death

scoreboard players remove @s switch.alive 1
execute if entity @s[scores={switch.alive=1..}] if data storage switch:main {map:"pitchout_1"} run function switch:modes/pitchout/map_1/tp_give
execute if entity @s[scores={switch.alive=1..}] if data storage switch:main {map:"pitchout_halloween"} run function switch:modes/pitchout/map_halloween/tp_give

function switch:modes/pitchout/advancements/on_death

function switch:modes/_common/death_spectator_lives

