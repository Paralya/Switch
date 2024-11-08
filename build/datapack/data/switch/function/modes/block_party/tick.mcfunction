
#> switch:modes/block_party/tick
#
# @within	switch:modes/block_party/calls/tick
#

## Death system
function switch:utils/on_death_run_function {function:"switch:modes/block_party/death"}
execute as @a[tag=!detached,gamemode=!spectator,sort=random] at @s if block ~ ~ ~ moving_piston run function switch:modes/block_party/death
execute as @e[type=!player] at @s if block ~ ~ ~ moving_piston run tp @s 0 -10000 0
kill @e[type=item]

## Game on the line
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=!spectator]

# Basic timer & particles
scoreboard players add #block_party_ticks switch.data 1
execute if score #block_party_ticks switch.data matches -100.. run particle note 110040 104 110040 64 2 64 1 8

# Paint cow advancement
execute unless score #test_mode switch.data matches 1 if score #block_party_ticks switch.data matches -130 if score #block_party_round switch.data matches 10.. at @e[type=marker,tag=switch.paint_marker] positioned ~-2 ~-1 ~-2 run advancement grant @a[tag=!detached,gamemode=!spectator,dx=4,dy=5,dz=4] only switch:visible/71
execute if score #block_party_ticks switch.data matches -130 run kill @e[type=marker,tag=switch.paint_marker]

# Pick a random art 7 seconds before the start of the game
execute if score #block_party_ticks switch.data matches -100 summon marker run function switch:modes/block_party/core/pick_random_art

# Give the block needed for everyone
execute if score #remaining_players switch.data matches 2.. if score #block_party_ticks switch.data matches 0 run function switch:modes/block_party/core/give_block


# Timer depending on rounds + stop sound
execute if score #remaining_players switch.data matches 2.. if score #block_party_ticks switch.data matches 0.. run function switch:modes/block_party/core/timer_per_round
execute if score #remaining_players switch.data matches 2.. if score #block_party_ticks switch.data matches 500.. as @e[tag=switch.paint_cow] at @s run function switch:modes/block_party/core/paint_cow
execute if score #remaining_players switch.data matches 2.. if score #block_party_ticks switch.data matches 1000.. run stopsound @a[tag=!detached] record
execute if score #remaining_players switch.data matches 2.. if score #block_party_ticks switch.data matches 1000.. unless score #process_end switch.data matches 1.. run function switch:modes/block_party/core/remove_blocks
function switch:modes/block_party/xp_bar


## End game
execute if score #remaining_players switch.data matches ..1 run function switch:modes/block_party/process_end
execute if score #block_party_seconds switch.data matches 1800.. run function switch:modes/block_party/process_end

