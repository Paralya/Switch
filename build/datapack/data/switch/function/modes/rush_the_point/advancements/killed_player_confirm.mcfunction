
#> switch:modes/rush_the_point/advancements/killed_player_confirm
#
# @within	switch:modes/rush_the_point/advancements/killed_player
#

scoreboard players set #color switch.data 0
execute store success score #color switch.data if entity @s[team=switch.rush_the_point.blue]

execute if score #color switch.data matches 0 run scoreboard players add #red_points switch.data 15
execute if score #color switch.data matches 1 run scoreboard players add #blue_points switch.data 15

