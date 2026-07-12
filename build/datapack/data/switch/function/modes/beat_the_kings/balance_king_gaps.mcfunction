
#> switch:modes/beat_the_kings/balance_king_gaps
#
# @within	switch:modes/beat_the_kings/start
#

scoreboard players set #n_civils switch.data 0
scoreboard players set #n_kings switch.data 1
execute store result score #n_civils switch.data if entity @a[tag=!detached,team=switch.temp.civil]
execute store result score #n_kings switch.data if entity @a[tag=!detached,team=switch.temp.king]
execute if score #n_kings switch.data matches ..0 run scoreboard players set #n_kings switch.data 1

# Gaps = 2 * (civils / roi), borné entre 3 et 8
scoreboard players operation #king_gaps switch.data = #n_civils switch.data
scoreboard players operation #king_gaps switch.data /= #n_kings switch.data
scoreboard players operation #king_gaps switch.data *= #2 switch.data
execute if score #king_gaps switch.data matches 8.. run scoreboard players set #king_gaps switch.data 8
execute if score #king_gaps switch.data matches ..3 run scoreboard players set #king_gaps switch.data 3

execute store result storage switch:temp king_gaps.count int 1 run scoreboard players get #king_gaps switch.data

