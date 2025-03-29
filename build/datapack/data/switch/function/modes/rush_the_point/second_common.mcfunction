
#> switch:modes/rush_the_point/second_common
#
# @within	switch:modes/rush_the_flag/second
#			switch:modes/rush_the_point/second
#

# Increment game timer and decrement remaining time
scoreboard players add #rush_the_point_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

# During preparation phase (negative seconds), apply effects and remove blocks
execute if score #rush_the_point_seconds switch.data matches ..-1 as @a[tag=!detached] run attribute @s jump_strength base set 0
execute if score #rush_the_point_seconds switch.data matches ..-1 run effect give @a[tag=!detached] slowness 100 250 true
execute if score #rush_the_point_seconds switch.data matches ..-1 run effect give @a[tag=!detached] blindness 100 250 true
execute if score #rush_the_point_seconds switch.data matches ..-1 run effect give @a[tag=!detached] night_vision 100 250 true
execute if score #rush_the_point_seconds switch.data matches ..-1 run effect give @a[tag=!detached] darkness 100 250 true
execute if score #rush_the_point_seconds switch.data matches ..-1 run setblock 14000 100 13925 air
execute if score #rush_the_point_seconds switch.data matches ..-1 run setblock 14000 100 14000 air
execute if score #rush_the_point_seconds switch.data matches ..-1 run setblock 14000 100 14075 air
execute if score #rush_the_point_seconds switch.data matches ..-1 run setblock 14000 86 14000 air

# When game starts (0 seconds), reset player attributes and clear effects
execute if score #rush_the_point_seconds switch.data matches 0 as @a[tag=!detached] run attribute @s jump_strength base reset
execute if score #rush_the_point_seconds switch.data matches 0 run effect clear @a[tag=!detached]

# Handle elytra cooldown timer
scoreboard players remove @a[scores={switch.temp.elytra_cooldown=1..}] switch.temp.elytra_cooldown 1

# Handle bonus item reload timer
scoreboard players add #bonus_reload switch.data 1
execute if score #bonus_reload switch.data matches 60.. run function switch:modes/rush_the_point/bonus_reload

# Spawn bridge snowballs at specific intervals
# First pair at start of reload cycle
execute if score #bonus_reload switch.data matches 0 run summon item 14063 103 14000 {Item:{id:"minecraft:snowball",count:1,components:{"minecraft:item_name":{"text":"Bridge Snowball","color":"yellow","italic":false}}},NoGravity:true,Glowing:true,CustomName:{"text":"Bridge Snowball","color":"yellow","italic":false},CustomNameVisible:true}
execute if score #bonus_reload switch.data matches 0 run summon item 13937 103 14000 {Item:{id:"minecraft:snowball",count:1,components:{"minecraft:item_name":{"text":"Bridge Snowball","color":"yellow","italic":false}}},NoGravity:true,Glowing:true,CustomName:{"text":"Bridge Snowball","color":"yellow","italic":false},CustomNameVisible:true}
# Second pair halfway through reload cycle
execute if score #bonus_reload switch.data matches 31 run summon item 14063 103 14000 {Item:{id:"minecraft:snowball",count:1,components:{"minecraft:item_name":{"text":"Bridge Snowball","color":"yellow","italic":false}}},NoGravity:true,Glowing:true,CustomName:{"text":"Bridge Snowball","color":"yellow","italic":false},CustomNameVisible:true}
execute if score #bonus_reload switch.data matches 31 run summon item 13937 103 14000 {Item:{id:"minecraft:snowball",count:1,components:{"minecraft:item_name":{"text":"Bridge Snowball","color":"yellow","italic":false}}},NoGravity:true,Glowing:true,CustomName:{"text":"Bridge Snowball","color":"yellow","italic":false},CustomNameVisible:true}

# Run translations
function switch:translations/modes_rush_the_point_second_common

