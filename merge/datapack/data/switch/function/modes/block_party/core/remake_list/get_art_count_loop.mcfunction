
# Add position to the list
execute store result storage switch:temp input int 2 run scoreboard players get #art_count switch.data
data modify storage switch:maps block_party append from storage switch:temp input

# Add art count and continue loop if not air
scoreboard players add #art_count switch.data 1
execute positioned ~ ~-2 ~ unless block ~ ~ ~ air run function switch:modes/block_party/core/remake_list/get_art_count_loop

