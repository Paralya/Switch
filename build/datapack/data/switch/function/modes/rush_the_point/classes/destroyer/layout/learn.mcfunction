
#> switch:modes/rush_the_point/classes/destroyer/layout/learn
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/layout/learn
#

execute unless items entity @s hotbar.* * unless items entity @s weapon.offhand * run return 0
scoreboard players set #p switch.data 87632109
execute if score @s switch.layout.57cba5f6 matches 0.. run scoreboard players operation #p switch.data = @s switch.layout.57cba5f6
function switch:player/layout/unpack
function switch:player/layout/clear_flags

# Items still on their learned slot keep it, before a moved twin can take it
scoreboard players set #n0 switch.data 0
execute if function switch:modes/rush_the_point/classes/destroyer/layout/stayed_0 run scoreboard players operation #n0 switch.data = #m0 switch.data
scoreboard players set #n1 switch.data 0
execute if function switch:modes/rush_the_point/classes/destroyer/layout/stayed_1 run scoreboard players operation #n1 switch.data = #m1 switch.data
scoreboard players set #n2 switch.data 0
execute if function switch:modes/rush_the_point/classes/destroyer/layout/stayed_2 run scoreboard players operation #n2 switch.data = #m2 switch.data
scoreboard players set #n3 switch.data 0
execute if function switch:modes/rush_the_point/classes/destroyer/layout/stayed_3 run scoreboard players operation #n3 switch.data = #m3 switch.data
scoreboard players set #n4 switch.data 0
execute if function switch:modes/rush_the_point/classes/destroyer/layout/stayed_4 run scoreboard players operation #n4 switch.data = #m4 switch.data
scoreboard players set #n5 switch.data 0
execute if function switch:modes/rush_the_point/classes/destroyer/layout/stayed_5 run scoreboard players operation #n5 switch.data = #m5 switch.data
scoreboard players set #n6 switch.data 0
execute if function switch:modes/rush_the_point/classes/destroyer/layout/stayed_6 run scoreboard players operation #n6 switch.data = #m6 switch.data
scoreboard players set #n7 switch.data 0
execute if function switch:modes/rush_the_point/classes/destroyer/layout/stayed_7 run scoreboard players operation #n7 switch.data = #m7 switch.data
execute if score #n0 switch.data matches 1.. if score #n1 switch.data matches 1.. if score #n2 switch.data matches 1.. if score #n3 switch.data matches 1.. if score #n4 switch.data matches 1.. if score #n5 switch.data matches 1.. if score #n6 switch.data matches 1.. if score #n7 switch.data matches 1.. run return 0

# Moved items, wherever they are now
execute if score #n0 switch.data matches 0 store result score #n0 switch.data run function switch:modes/rush_the_point/classes/destroyer/layout/find_0
scoreboard players operation #t switch.data = #n0 switch.data
function switch:player/layout/flag
execute if score #n1 switch.data matches 0 store result score #n1 switch.data run function switch:modes/rush_the_point/classes/destroyer/layout/find_1
scoreboard players operation #t switch.data = #n1 switch.data
function switch:player/layout/flag
execute if score #n2 switch.data matches 0 store result score #n2 switch.data run function switch:modes/rush_the_point/classes/destroyer/layout/find_2
scoreboard players operation #t switch.data = #n2 switch.data
function switch:player/layout/flag
execute if score #n3 switch.data matches 0 store result score #n3 switch.data run function switch:modes/rush_the_point/classes/destroyer/layout/find_3
scoreboard players operation #t switch.data = #n3 switch.data
function switch:player/layout/flag
execute if score #n4 switch.data matches 0 store result score #n4 switch.data run function switch:modes/rush_the_point/classes/destroyer/layout/find_4
scoreboard players operation #t switch.data = #n4 switch.data
function switch:player/layout/flag
execute if score #n5 switch.data matches 0 store result score #n5 switch.data run function switch:modes/rush_the_point/classes/destroyer/layout/find_5
scoreboard players operation #t switch.data = #n5 switch.data
function switch:player/layout/flag
execute if score #n6 switch.data matches 0 store result score #n6 switch.data run function switch:modes/rush_the_point/classes/destroyer/layout/find_6
scoreboard players operation #t switch.data = #n6 switch.data
function switch:player/layout/flag
execute if score #n7 switch.data matches 0 store result score #n7 switch.data run function switch:modes/rush_the_point/classes/destroyer/layout/find_7
scoreboard players operation #t switch.data = #n7 switch.data
function switch:player/layout/flag

# An emptied or replaced inventory teaches nothing
execute unless score #n0 switch.data matches 1.. unless score #n1 switch.data matches 1.. unless score #n2 switch.data matches 1.. unless score #n3 switch.data matches 1.. unless score #n4 switch.data matches 1.. unless score #n5 switch.data matches 1.. unless score #n6 switch.data matches 1.. unless score #n7 switch.data matches 1.. run return 0

# Missing items keep their learned slot when it is free
execute if score #n0 switch.data matches 0 run scoreboard players operation #t switch.data = #m0 switch.data
execute if score #n0 switch.data matches 0 if function switch:player/layout/is_free run scoreboard players operation #n0 switch.data = #t switch.data
execute if score #n0 switch.data matches 0 store result score #n0 switch.data run function switch:player/layout/free/9
scoreboard players operation #t switch.data = #n0 switch.data
function switch:player/layout/flag
execute if score #n1 switch.data matches 0 run scoreboard players operation #t switch.data = #m1 switch.data
execute if score #n1 switch.data matches 0 if function switch:player/layout/is_free run scoreboard players operation #n1 switch.data = #t switch.data
execute if score #n1 switch.data matches 0 store result score #n1 switch.data run function switch:player/layout/free/0
scoreboard players operation #t switch.data = #n1 switch.data
function switch:player/layout/flag
execute if score #n2 switch.data matches 0 run scoreboard players operation #t switch.data = #m2 switch.data
execute if score #n2 switch.data matches 0 if function switch:player/layout/is_free run scoreboard players operation #n2 switch.data = #t switch.data
execute if score #n2 switch.data matches 0 store result score #n2 switch.data run function switch:player/layout/free/1
scoreboard players operation #t switch.data = #n2 switch.data
function switch:player/layout/flag
execute if score #n3 switch.data matches 0 run scoreboard players operation #t switch.data = #m3 switch.data
execute if score #n3 switch.data matches 0 if function switch:player/layout/is_free run scoreboard players operation #n3 switch.data = #t switch.data
execute if score #n3 switch.data matches 0 store result score #n3 switch.data run function switch:player/layout/free/2
scoreboard players operation #t switch.data = #n3 switch.data
function switch:player/layout/flag
execute if score #n4 switch.data matches 0 run scoreboard players operation #t switch.data = #m4 switch.data
execute if score #n4 switch.data matches 0 if function switch:player/layout/is_free run scoreboard players operation #n4 switch.data = #t switch.data
execute if score #n4 switch.data matches 0 store result score #n4 switch.data run function switch:player/layout/free/3
scoreboard players operation #t switch.data = #n4 switch.data
function switch:player/layout/flag
execute if score #n5 switch.data matches 0 run scoreboard players operation #t switch.data = #m5 switch.data
execute if score #n5 switch.data matches 0 if function switch:player/layout/is_free run scoreboard players operation #n5 switch.data = #t switch.data
execute if score #n5 switch.data matches 0 store result score #n5 switch.data run function switch:player/layout/free/6
scoreboard players operation #t switch.data = #n5 switch.data
function switch:player/layout/flag
execute if score #n6 switch.data matches 0 run scoreboard players operation #t switch.data = #m6 switch.data
execute if score #n6 switch.data matches 0 if function switch:player/layout/is_free run scoreboard players operation #n6 switch.data = #t switch.data
execute if score #n6 switch.data matches 0 store result score #n6 switch.data run function switch:player/layout/free/7
scoreboard players operation #t switch.data = #n6 switch.data
function switch:player/layout/flag
execute if score #n7 switch.data matches 0 run scoreboard players operation #t switch.data = #m7 switch.data
execute if score #n7 switch.data matches 0 if function switch:player/layout/is_free run scoreboard players operation #n7 switch.data = #t switch.data
execute if score #n7 switch.data matches 0 store result score #n7 switch.data run function switch:player/layout/free/8
scoreboard players operation #t switch.data = #n7 switch.data
function switch:player/layout/flag

execute if score #n0 switch.data = #m0 switch.data if score #n1 switch.data = #m1 switch.data if score #n2 switch.data = #m2 switch.data if score #n3 switch.data = #m3 switch.data if score #n4 switch.data = #m4 switch.data if score #n5 switch.data = #m5 switch.data if score #n6 switch.data = #m6 switch.data if score #n7 switch.data = #m7 switch.data run return 0
scoreboard players set @s switch.layout.57cba5f6 0
scoreboard players operation @s switch.layout.57cba5f6 *= #10 switch.data
scoreboard players operation @s switch.layout.57cba5f6 += #n7 switch.data
scoreboard players remove @s switch.layout.57cba5f6 1
scoreboard players operation @s switch.layout.57cba5f6 *= #10 switch.data
scoreboard players operation @s switch.layout.57cba5f6 += #n6 switch.data
scoreboard players remove @s switch.layout.57cba5f6 1
scoreboard players operation @s switch.layout.57cba5f6 *= #10 switch.data
scoreboard players operation @s switch.layout.57cba5f6 += #n5 switch.data
scoreboard players remove @s switch.layout.57cba5f6 1
scoreboard players operation @s switch.layout.57cba5f6 *= #10 switch.data
scoreboard players operation @s switch.layout.57cba5f6 += #n4 switch.data
scoreboard players remove @s switch.layout.57cba5f6 1
scoreboard players operation @s switch.layout.57cba5f6 *= #10 switch.data
scoreboard players operation @s switch.layout.57cba5f6 += #n3 switch.data
scoreboard players remove @s switch.layout.57cba5f6 1
scoreboard players operation @s switch.layout.57cba5f6 *= #10 switch.data
scoreboard players operation @s switch.layout.57cba5f6 += #n2 switch.data
scoreboard players remove @s switch.layout.57cba5f6 1
scoreboard players operation @s switch.layout.57cba5f6 *= #10 switch.data
scoreboard players operation @s switch.layout.57cba5f6 += #n1 switch.data
scoreboard players remove @s switch.layout.57cba5f6 1
scoreboard players operation @s switch.layout.57cba5f6 *= #10 switch.data
scoreboard players operation @s switch.layout.57cba5f6 += #n0 switch.data
scoreboard players remove @s switch.layout.57cba5f6 1

