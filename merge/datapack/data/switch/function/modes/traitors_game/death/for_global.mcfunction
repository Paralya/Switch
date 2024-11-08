
scoreboard players operation #player_id switch.id = @s switch.id
clear @a[tag=!detached,predicate=switch:has_same_id]
execute at @s run function switch:modes/traitors_game/death/drop_inventory

scoreboard players set #success switch.data 0
execute if predicate switch:chance/0.5 run scoreboard players set #success switch.data 1

execute as @a[tag=!detached] at @s run playsound entity.lightning_bolt.impact ambient @s ~ ~ ~ 1 0.2

execute if score #sc_silencieux switch.data matches 1 if predicate switch:chance/0.33 run scoreboard players set @s switch.temp.role 0

# Add stolen message
data modify storage switch:temp stolen set value ""
execute if entity @s[tag=switch.floupy] run data modify storage switch:temp stolen set value " (flouped)"

# Add solitaire message
data modify storage switch:temp solitaire set value ""
execute if entity @s[tag=switch.solitaire] run data modify storage switch:temp stolen set value " (solitaire)"

function switch:translations/modes_traitors_game_death_for_global

kill @s
execute unless score #sc_silencieux switch.data matches 1 run function switch:modes/traitors_game/update_sidebar

