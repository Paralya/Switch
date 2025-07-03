
#> switch:modes/de_a_coudre/tick
#
# @within	switch:modes/de_a_coudre/calls/tick
#

scoreboard players add #de_a_coudre_ticks switch.data 1

## Global tick
execute as @e[type=player,tag=!detached,gamemode=adventure,predicate=switch:in_water] at @s run function switch:modes/de_a_coudre/done
function switch:utils/on_death_run_function {function:"switch:modes/de_a_coudre/death"}
execute if score #de_a_coudre_seconds switch.data matches 1.. unless score #rounds switch.data matches 0 if score #detect_end switch.data matches 0 unless entity @a[tag=!detached,gamemode=adventure] if entity @a[tag=!detached] run function switch:modes/de_a_coudre/next_player

# XP bar
function switch:modes/de_a_coudre/xp_bar
execute if score #remaining_time switch.data matches -120.. run scoreboard players remove #remaining_time switch.data 1
execute if score #remaining_time switch.data matches 0 as @a[tag=!detached,gamemode=adventure] at @s if entity @s[y=190,dy=100] run kill @s
execute if score #remaining_time switch.data matches -120 run kill @a[tag=!detached,gamemode=adventure]

## End game
execute if score #detect_end switch.data matches 0 if score #rounds switch.data matches 0 run scoreboard players set #detect_end switch.data 1
execute if score #detect_end switch.data matches 0 if score #de_a_coudre_seconds switch.data matches 1200.. run scoreboard players set #detect_end switch.data 2
execute if score #detect_end switch.data matches 1 run function switch:modes/de_a_coudre/process_end

