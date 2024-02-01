
# Classic timer
scoreboard players add #memory_mine_seconds switch.data 1
execute if score #memory_mine_seconds switch.data matches 0 as @a[tag=!detached] at @s run function switch:modes/memory_mine/give_items

# Every 30 seconds, make a zone where people need to be
scoreboard players operation #temp switch.data = #memory_mine_seconds switch.data
scoreboard players operation #temp switch.data %= #30 switch.data
execute if score #temp switch.data matches 10 run function switch:modes/memory_mine/zone/summon


