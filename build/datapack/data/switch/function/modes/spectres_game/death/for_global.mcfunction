
#> switch:modes/spectres_game/death/for_global
#
# @executed	as @e[type=marker,tag=switch.player_dead]
#
# @within	switch:modes/spectres_game/tick [ as @e[type=marker,tag=switch.player_dead] ]
#

scoreboard players operation #player_id switch.id = @s switch.id
tag @a[tag=!detached,predicate=switch:has_same_id] add switch.temp
clear @a[tag=switch.temp]

function switch:modes/spectres_game/death/inventory_filter
function switch:modes/_common/death/global_effects
execute if entity @a[tag=switch.temp,scores={switch.temp.spectror=1}] run scoreboard players set @s switch.alive 3

function switch:modes/spectres_game/translations/death_for_global

execute if entity @s[scores={switch.alive=1}] run scoreboard players add #nb_dead_spectres switch.data 1
execute if entity @s[scores={switch.alive=2}] run scoreboard players add #nb_dead_visibles switch.data 1

# Kill marker and remove player temp tag
tag @a[tag=switch.temp] remove switch.temp
kill @s

