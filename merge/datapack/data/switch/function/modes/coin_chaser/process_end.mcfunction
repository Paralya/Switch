
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 run tag @a remove switch.winner
execute if score #process_end switch.data matches 1 run scoreboard players set #max switch.data 0
execute if score #process_end switch.data matches 1 run scoreboard players operation #max switch.data > @a[tag=!detached] switch.temp.points
execute if score #process_end switch.data matches 1 as @a[tag=!detached] if score @s switch.temp.points = #max switch.data run tag @s add switch.winner
execute if score #process_end switch.data matches 1 as @a[tag=!detached,tag=switch.winner] at @s run function switch:engine/add_win
function switch:translations/modes_coin_chaser_process_end
execute if score #process_end switch.data matches 1 run tag @a remove switch.winner
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:modes/coin_chaser/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 100 run function switch:engine/restart

