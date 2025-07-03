
# Classic timer
scoreboard players add #memory_mine_seconds switch.data 1
execute if score #memory_mine_seconds switch.data matches 0 run scoreboard players set @a[tag=!detached] switch.temp.cooldown 2

# Every 30 seconds, make a zone where people need to be
scoreboard players operation #temp switch.data = #memory_mine_seconds switch.data
scoreboard players operation #temp switch.data %= #15 switch.data
execute if score #temp switch.data matches 5 in switch:game run function switch:modes/memory_mine/zone/summon
execute if score #temp switch.data matches 6..13 at @e[type=marker,tag=switch.zone] run function switch:modes/memory_mine/zone/particles
execute if score #temp switch.data matches 14 as @e[type=marker,tag=switch.zone] at @s run function switch:modes/memory_mine/zone/end

