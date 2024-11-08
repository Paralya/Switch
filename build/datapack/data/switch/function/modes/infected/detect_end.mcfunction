
#> switch:modes/infected/detect_end
#
# @within	switch:modes/infected/second
#

# 0 = Victoire Humains
# 1 = Victoire Zombies
# 2 = Plus personne

scoreboard players set #game_state switch.data 0
execute if entity @a[team=switch.temp.zombie] unless entity @a[team=switch.temp.human] run scoreboard players set #game_state switch.data 1
execute unless entity @a[tag=!detached,gamemode=!spectator] run scoreboard players set #game_state switch.data 2
execute if score #game_state switch.data matches 1.. run scoreboard players set #remaining_time switch.data -1000

