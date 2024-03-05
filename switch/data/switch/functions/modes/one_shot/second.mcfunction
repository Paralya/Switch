
scoreboard players add #one_shot_seconds switch.data 1


execute if score #one_shot_seconds switch.data matches 3 as @a[tag=!detached] at @s run function switch:modes/one_shot/give_items
execute if score #one_shot_seconds switch.data matches 5 run give @a[tag=!detached] arrow 1

scoreboard players operation #temp switch.data = #one_shot_seconds switch.data
scoreboard players operation #temp switch.data %= #31 switch.data
execute if score #temp switch.data matches 0 run effect give @a[tag=!detached] glowing 4 2 true

# only one winner en cas d'une team
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] run function switch:modes/one_shot/teams_tp/only_one_winner
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] run function switch:modes/one_shot/teams_tp/only_one_winner

# PVP Warning
function switch:translations/modes_one_shot_second

