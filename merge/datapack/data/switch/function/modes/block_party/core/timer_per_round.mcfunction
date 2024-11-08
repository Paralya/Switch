
# Timer depending on rounds (Round 1: ~6s, Round 2: ~5s, Round 3: ~4s, Round 4: ~3.5s, Round 5: ~3s, Round 6: ~2.5s, Round 7: ~2.25s, Round 8: ~2.0s, Round 9: ~1.8s, Round 10: ~1.6s)
execute if score #block_party_round switch.data matches 1 run scoreboard players add #block_party_ticks switch.data 7
execute if score #block_party_round switch.data matches 2 run scoreboard players add #block_party_ticks switch.data 9
execute if score #block_party_round switch.data matches 3 run scoreboard players add #block_party_ticks switch.data 12
execute if score #block_party_round switch.data matches 4 run scoreboard players add #block_party_ticks switch.data 14
execute if score #block_party_round switch.data matches 5 run scoreboard players add #block_party_ticks switch.data 17
execute if score #block_party_round switch.data matches 6 run scoreboard players add #block_party_ticks switch.data 19
execute if score #block_party_round switch.data matches 7 run scoreboard players add #block_party_ticks switch.data 22
execute if score #block_party_round switch.data matches 8 run scoreboard players add #block_party_ticks switch.data 24
execute if score #block_party_round switch.data matches 9 run scoreboard players add #block_party_ticks switch.data 27
execute if score #block_party_round switch.data matches 10.. run scoreboard players add #block_party_ticks switch.data 29
execute if score #block_party_round switch.data matches 20 unless score #test_mode switch.data matches 1 run advancement grant @a[tag=!detached,gamemode=adventure] only switch:visible/24

