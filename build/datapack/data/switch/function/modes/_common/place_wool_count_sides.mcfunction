
#> switch:modes/_common/place_wool_count_sides
#
# @executed	at @s
#
# @within	switch:modes/de_a_coudre/done
#			switch:modes/simultaneous_jump/done
#

scoreboard players operation #block switch.data = @s switch.temp.color
function switch:modes/_common/set_wool_color

scoreboard players set #points switch.data 1
execute positioned ~-1 ~ ~ unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1
execute positioned ~ ~ ~-1 unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1
execute positioned ~ ~ ~1 unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1
execute positioned ~1 ~ ~ unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1

