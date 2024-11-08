
#> switch:modes/infected/second_regen
#
# @within	switch:modes/infected/second
#

# Regen & Arrow give
scoreboard players operation #temp switch.data = #infected_seconds switch.data
scoreboard players operation #temp switch.data %= #20 switch.data
execute if score #temp switch.data matches 0 run effect give @a[tag=!detached] regeneration 1 2 true
execute if score #temp switch.data matches 10 run effect give @a[tag=!detached] regeneration 1 2 true
execute if score #infected_seconds switch.data matches 60 run give @a[team=switch.temp.human] bow[unbreakable={}]
execute if score #infected_seconds switch.data matches 60.. if score #temp switch.data matches 0 as @a[team=switch.temp.human] run function switch:modes/infected/give_arrow/main

