
# Timer depending on rounds (Round 0: ~6s, Round 1: ~5s, Round 2: ~4s, Round 3: ~3.5s, Round 4: ~3s, Round 5: ~2.5s, Round 6: ~2.25s, Round 7: ~2.0s, Round 8: ~1.8s, Round 9: ~1.6s, Round 10: ~1.5s)
execute if score #block_party_round switch.data matches 0 run scoreboard players add #block_party_ticks switch.data 7
execute if score #block_party_round switch.data matches 1 run scoreboard players add #block_party_ticks switch.data 9
execute if score #block_party_round switch.data matches 2 run scoreboard players add #block_party_ticks switch.data 12
execute if score #block_party_round switch.data matches 3 run scoreboard players add #block_party_ticks switch.data 14
execute if score #block_party_round switch.data matches 4 run scoreboard players add #block_party_ticks switch.data 17
execute if score #block_party_round switch.data matches 5 run scoreboard players add #block_party_ticks switch.data 19
execute if score #block_party_round switch.data matches 6 run scoreboard players add #block_party_ticks switch.data 22
execute if score #block_party_round switch.data matches 7 run scoreboard players add #block_party_ticks switch.data 24
execute if score #block_party_round switch.data matches 8 run scoreboard players add #block_party_ticks switch.data 27
execute if score #block_party_round switch.data matches 9 run scoreboard players add #block_party_ticks switch.data 29
execute if score #block_party_round switch.data matches 10 run scoreboard players add #block_party_ticks switch.data 32

