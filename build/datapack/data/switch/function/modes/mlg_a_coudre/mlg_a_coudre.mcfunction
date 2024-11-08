
#> switch:modes/mlg_a_coudre/mlg_a_coudre
#
# @within	switch:modes/mlg_a_coudre/done
#

setblock ~ ~ ~ emerald_block
function switch:translations/modes_mlg_a_coudre_mlg_a_coudre
execute if score @s switch.temp.lives matches ..1 run scoreboard players add @s switch.temp.lives 1
scoreboard players set #success switch.data 1

# Advancement
scoreboard players add @s switch.temp.nb_de_a_coudre 1
execute unless score #test_mode switch.data matches 1 if score @s switch.temp.nb_de_a_coudre matches 3 run advancement grant @s only switch:visible/21

