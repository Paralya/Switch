
#> switch:modes/pvpswap/tick
#
# @within	switch:modes/pvpswap/calls/tick
#

scoreboard players add #pvpswap_ticks switch.data 1

function switch:modes/_common/pvp_arena/combat_tick

## End game
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=survival]
execute if score #remaining_players switch.data matches ..1 run function switch:modes/pvpswap/process_end
execute if score #remaining_time switch.data matches ..0 run function switch:modes/pvpswap/process_end

