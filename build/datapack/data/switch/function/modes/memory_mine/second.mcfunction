
#> switch:modes/memory_mine/second
#
# @within	switch:modes/memory_mine/calls/second
#

# Classic timer
scoreboard players add #memory_mine_seconds switch.data 1
execute if score #memory_mine_seconds switch.data matches 0 run scoreboard players set @a[tag=!detached] switch.temp.cooldown 2

# Every 30 seconds, make a zone where people need to be
scoreboard players operation #temp switch.data = #memory_mine_seconds switch.data
scoreboard players operation #temp switch.data %= #15 switch.data
execute if score #temp switch.data matches 5 in switch:game run function switch:modes/memory_mine/zone/summon
execute if score #temp switch.data matches 6..13 at @e[type=marker,tag=switch.zone] run function switch:modes/memory_mine/zone/particles
execute if score #temp switch.data matches 14 as @e[type=marker,tag=switch.zone] at @s run function switch:modes/memory_mine/zone/end

# XP bar counts down the seconds left to reach the zone
execute if score #temp switch.data matches 5 run xp set @a[tag=!detached] 9 levels
execute if score #temp switch.data matches 5 run xp set @a[tag=!detached] 25 points
execute if score #temp switch.data matches 6 run xp set @a[tag=!detached] 8 levels
execute if score #temp switch.data matches 6 run xp set @a[tag=!detached] 20 points
execute if score #temp switch.data matches 7 run xp set @a[tag=!detached] 7 levels
execute if score #temp switch.data matches 7 run xp set @a[tag=!detached] 16 points
execute if score #temp switch.data matches 8 run xp set @a[tag=!detached] 6 levels
execute if score #temp switch.data matches 8 run xp set @a[tag=!detached] 12 points
execute if score #temp switch.data matches 9 run xp set @a[tag=!detached] 5 levels
execute if score #temp switch.data matches 9 run xp set @a[tag=!detached] 9 points
execute if score #temp switch.data matches 10 run xp set @a[tag=!detached] 4 levels
execute if score #temp switch.data matches 10 run xp set @a[tag=!detached] 6 points
execute if score #temp switch.data matches 11 run xp set @a[tag=!detached] 3 levels
execute if score #temp switch.data matches 11 run xp set @a[tag=!detached] 4 points
execute if score #temp switch.data matches 12 run xp set @a[tag=!detached] 2 levels
execute if score #temp switch.data matches 12 run xp set @a[tag=!detached] 2 points
execute if score #temp switch.data matches 13 run xp set @a[tag=!detached] 1 levels
execute if score #temp switch.data matches 13 run xp set @a[tag=!detached] 1 points
execute if score #temp switch.data matches 14 run xp set @a[tag=!detached] 0 levels
execute if score #temp switch.data matches 14 run xp set @a[tag=!detached] 0 points

