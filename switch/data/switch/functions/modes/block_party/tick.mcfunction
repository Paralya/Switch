
## Fonction executée tous les ticks lorsque le mode de jeu est activé


## Death system
execute as @a[gamemode=!spectator,sort=random] at @s if block ~ ~ ~ moving_piston run function switch:modes/block_party/death
execute as @e[type=!player] at @s if block ~ ~ ~ moving_piston run tp @s 0 -10000 0
kill @e[type=item]

## Game on the line
# Basic timer & particles
scoreboard players add #block_party_ticks switch.data 1
execute if score #block_party_ticks switch.data matches -100.. run particle note 110040 104 110040 64 2 64 1 8

# Pick a random art 7 seconds before the start of the game
execute if score #block_party_ticks switch.data matches -100 summon marker run function switch:modes/block_party/core/pick_random_art

# Give the block needed for everyone
execute if score #block_party_ticks switch.data matches 0 run function switch:modes/block_party/core/give_block


# Timer depending on rounds + stop sound
execute if score #block_party_ticks switch.data matches 0.. run function switch:modes/block_party/core/timer_per_round
execute if score #block_party_ticks switch.data matches 500.. as @e[tag=switch.paint_cow] at @s run function switch:modes/block_party/core/paint_cow
execute if score #block_party_ticks switch.data matches 1000.. run stopsound @a record
execute if score #block_party_ticks switch.data matches 1000.. run function switch:modes/block_party/core/remove_blocks
function switch:modes/block_party/xp_bar


## Fin de partie
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[gamemode=!spectator]
execute if score #remaining_players switch.data matches ..0 run function switch:modes/block_party/process_end
execute if score #block_party_seconds switch.data matches 600.. run function switch:modes/block_party/process_end

