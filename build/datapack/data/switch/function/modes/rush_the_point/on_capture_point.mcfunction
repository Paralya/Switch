
#> switch:modes/rush_the_point/on_capture_point
#
# @within	???
#

execute if score #color switch.data matches 0 if entity @s[team=switch.rush_the_point.red] run scoreboard players set #color switch.data 1
execute if score #color switch.data matches 0 if entity @s[team=switch.rush_the_point.blue] run scoreboard players set #color switch.data 2
execute if score #color switch.data matches 1 if entity @s[team=switch.rush_the_point.blue] run scoreboard players set #color switch.data -1
execute if score #color switch.data matches 2 if entity @s[team=switch.rush_the_point.red] run scoreboard players set #color switch.data -1

