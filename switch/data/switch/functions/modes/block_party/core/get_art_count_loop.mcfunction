
# Add art count and continue loop if not air
scoreboard players add #art_count switch.data 1
execute positioned ~ ~-2 ~ unless block ~ ~ ~ air run function switch:modes/block_party/core/get_art_count_loop

