
#> switch:modes/spleef/tick
#
# @within	switch:modes/spleef/calls/tick
#

scoreboard players add #spleef_ticks switch.data 1

## Kill attribution : drop owner markers where players dig, age and expire old ones (after 2s)
execute as @a[tag=!detached,gamemode=survival,scores={switch.temp.mined=1..}] at @s run function switch:modes/spleef/dig_mark
scoreboard players set @a switch.temp.mined 0
scoreboard players add @e[tag=switch.spleef_dig] switch.temp.marker_age 1
kill @e[tag=switch.spleef_dig,scores={switch.temp.marker_age=40..}]

## Powder snow trap detection (trapped_timer stays > 0 for 2s after leaving the powder snow)
scoreboard players remove @a[scores={switch.temp.trapped_timer=1..}] switch.temp.trapped_timer 1
execute as @a[tag=!detached,gamemode=survival] at @s if block ~ ~ ~ powder_snow run function switch:modes/spleef/trap_detect

## No drop system / Death system / Border reduction system
execute as @e[type=item,tag=!switch.checked] run function switch:modes/spleef/no_drop
execute as @a[tag=!detached,gamemode=survival,predicate=switch:in_lava,sort=random] run function switch:modes/spleef/death
function switch:utils/on_death_run_function {function:"switch:modes/spleef/death"}
execute if score #spleef_seconds switch.data matches 30.. as @e[type=marker,tag=switch.spleef_border] at @s run function switch:modes/spleef/border_reduction/progress

## Snow Powder
execute as @a[tag=!detached,gamemode=survival,scores={switch.temp.placed_shulker=1..}] at @s run function switch:modes/spleef/replace_shulker

## End game
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=survival]
execute if score #spleef_seconds switch.data matches 1.. if score #remaining_players switch.data matches ..1 run function switch:modes/spleef/process_end
execute if score #spleef_seconds switch.data matches 300.. run function switch:modes/spleef/process_end

