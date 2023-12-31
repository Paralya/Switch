
scoreboard players add #rush_the_point_seconds switch.data 1
function switch:modes/rush_the_point/second_common

# Points
execute if score #remaining_time switch.data matches 1.. run function switch:modes/rush_the_point/xp_bar
execute if score #remaining_time switch.data matches 1.. if score #color switch.data matches 1 run scoreboard players add #red_points switch.data 10
execute if score #remaining_time switch.data matches 1.. if score #color switch.data matches 2 run scoreboard players add #blue_points switch.data 10

# Bridge snowballs
execute if score #bonus_reload switch.data matches 0 run summon item 14063 103 14000 {Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Bridge Snowball","color":"yellow","italic":false}'}}},NoGravity:1b,Glowing:1b,CustomName:'{"text":"Bridge Snowball","color":"yellow","italic":false}',CustomNameVisible:1b}
execute if score #bonus_reload switch.data matches 0 run summon item 13937 103 14000 {Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Bridge Snowball","color":"yellow","italic":false}'}}},NoGravity:1b,Glowing:1b,CustomName:'{"text":"Bridge Snowball","color":"yellow","italic":false}',CustomNameVisible:1b}
execute if score #bonus_reload switch.data matches 31 run summon item 14063 103 14000 {Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Bridge Snowball","color":"yellow","italic":false}'}}},NoGravity:1b,Glowing:1b,CustomName:'{"text":"Bridge Snowball","color":"yellow","italic":false}',CustomNameVisible:1b}
execute if score #bonus_reload switch.data matches 31 run summon item 13937 103 14000 {Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Bridge Snowball","color":"yellow","italic":false}'}}},NoGravity:1b,Glowing:1b,CustomName:'{"text":"Bridge Snowball","color":"yellow","italic":false}',CustomNameVisible:1b}

