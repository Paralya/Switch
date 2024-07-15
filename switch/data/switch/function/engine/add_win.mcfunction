
execute if score #test_mode switch.data matches 1.. run return 1

scoreboard players add @s switch.win_streak 6
execute if score @s switch.win_streak matches 5.. unless score #test_mode switch.data matches 1 run advancement grant @s only switch:visible/30
scoreboard players add @s switch.stats.wins 1
execute unless score #test_mode switch.data matches 1 run advancement grant @s only switch:visible/4
function switch:engine/add_win_macro with storage switch:main
function switch:engine/add_money

