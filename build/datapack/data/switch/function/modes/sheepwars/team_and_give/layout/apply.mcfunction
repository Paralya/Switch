
#> switch:modes/sheepwars/team_and_give/layout/apply
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/sheepwars/team_and_give
#

scoreboard players operation #p switch.data = @s switch.layout.913bdfe1
function switch:player/layout/unpack
function switch:player/layout/clear_flags

scoreboard players operation #t switch.data = #m0 switch.data
execute store result score #k switch.data run function switch:modes/sheepwars/team_and_give/layout/find_0
execute if score #k switch.data matches 1.. unless score #k switch.data = #t switch.data run function switch:player/layout/swap
execute if score #k switch.data matches 1.. run function switch:player/layout/flag

scoreboard players operation #t switch.data = #m1 switch.data
execute store result score #k switch.data run function switch:modes/sheepwars/team_and_give/layout/find_1
execute if score #k switch.data matches 1.. unless score #k switch.data = #t switch.data run function switch:player/layout/swap
execute if score #k switch.data matches 1.. run function switch:player/layout/flag

scoreboard players operation #t switch.data = #m2 switch.data
execute store result score #k switch.data run function switch:modes/sheepwars/team_and_give/layout/find_2
execute if score #k switch.data matches 1.. unless score #k switch.data = #t switch.data run function switch:player/layout/swap
execute if score #k switch.data matches 1.. run function switch:player/layout/flag

scoreboard players operation #t switch.data = #m3 switch.data
execute store result score #k switch.data run function switch:modes/sheepwars/team_and_give/layout/find_3
execute if score #k switch.data matches 1.. unless score #k switch.data = #t switch.data run function switch:player/layout/swap
execute if score #k switch.data matches 1.. run function switch:player/layout/flag

