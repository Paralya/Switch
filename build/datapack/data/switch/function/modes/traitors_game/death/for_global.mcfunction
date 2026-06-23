
#> switch:modes/traitors_game/death/for_global
#
# @executed	as @e[type=marker,tag=switch.player_dead]
#
# @within	switch:modes/traitors_game/death/process
#			switch:modes/traitors_game/detect_end [ as @e[type=marker,tag=switch.player_dead] ]
#

scoreboard players operation #player_id switch.id = @s switch.id
clear @a[tag=!detached,predicate=switch:has_same_id]
function switch:modes/_common/death/global_effects

execute if score #sc_silencieux switch.data matches 1 if predicate switch:chance/0.33 run scoreboard players set @s switch.temp.role 0

# Add stolen message
data modify storage switch:temp stolen set value ""
execute if entity @s[tag=switch.floupy] run data modify storage switch:temp stolen set value " (flouped)"

# Add solitaire message
data modify storage switch:temp solitaireFR set value ""
data modify storage switch:temp solitaireEN set value ""
execute if entity @s[tag=switch.solitaire] run data modify storage switch:temp solitaireFR set value " (solitaire)"
execute if entity @s[tag=switch.solitaire] run data modify storage switch:temp solitaireEN set value " (solitary)"

function switch:modes/traitors_game/translations/death_for_global

kill @s
execute unless score #sc_silencieux switch.data matches 1 run function switch:modes/traitors_game/update_sidebar

