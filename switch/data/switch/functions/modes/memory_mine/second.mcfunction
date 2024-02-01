
# Classic timer
scoreboard players add #memory_mine_seconds switch.data 1
execute if score #memory_mine_seconds switch.data matches 0 as @a[tag=!detached] at @s run function switch:modes/memory_mine/give_items

# Every 30 seconds, make a zone where people need to be
scoreboard players operation #temp switch.data = #memory_mine_seconds switch.data
scoreboard players operation #temp switch.data %= #20 switch.data
execute if score #temp switch.data matches 10 run function switch:modes/memory_mine/zone/summon
execute if score #temp switch.data matches 10..18 at @e[type=marker,tag=switch.zone] run function switch:modes/memory_mine/zone/particles
execute if score #temp switch.data matches 19 as @e[type=marker,tag=switch.zone] at @s run function switch:modes/memory_mine/zone/end

