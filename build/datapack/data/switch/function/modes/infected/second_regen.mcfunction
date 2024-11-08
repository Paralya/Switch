
#> switch:modes/infected/second_regen
#
# @within	switch:modes/infected/second
#

# Effect give every 10 seconds
scoreboard players operation #temp switch.data = #infected_seconds switch.data
scoreboard players operation #temp switch.data %= #10 switch.data
execute if score #temp switch.data matches 0 run effect give @a[tag=!detached] regeneration 1 2 true

# Give arrow every 40 seconds
scoreboard players operation #arrow_give switch.data = #infected_seconds switch.data
scoreboard players operation #arrow_give switch.data %= #40 switch.data
execute if score #infected_seconds switch.data matches 60 run give @a[team=switch.temp.human] bow[unbreakable={}]
execute if score #infected_seconds switch.data matches 60.. if score #arrow_give switch.data matches 0 as @a[team=switch.temp.human] run function switch:modes/infected/give_arrow/main

