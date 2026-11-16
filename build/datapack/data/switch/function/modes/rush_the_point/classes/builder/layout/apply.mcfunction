
#> switch:modes/rush_the_point/classes/builder/layout/apply
#
# @executed	as the player & at current position
#
# @within	switch:modes/rush_the_point/classes/builder
#

scoreboard players operation #p switch.data = @s switch.layout.fd05a136
function switch:player/layout/unpack
function switch:player/layout/clear_flags

scoreboard players operation #t switch.data = #m0 switch.data
execute store result score #k switch.data run function switch:modes/rush_the_point/classes/builder/layout/find_0
execute if score #k switch.data matches 1.. unless score #k switch.data = #t switch.data run function switch:player/layout/swap
execute if score #k switch.data matches 1.. run function switch:player/layout/flag

scoreboard players operation #t switch.data = #m1 switch.data
execute store result score #k switch.data run function switch:modes/rush_the_point/classes/builder/layout/find_1
execute if score #k switch.data matches 1.. unless score #k switch.data = #t switch.data run function switch:player/layout/swap
execute if score #k switch.data matches 1.. run function switch:player/layout/flag

scoreboard players operation #t switch.data = #m2 switch.data
execute store result score #k switch.data run function switch:modes/rush_the_point/classes/builder/layout/find_2
execute if score #k switch.data matches 1.. unless score #k switch.data = #t switch.data run function switch:player/layout/swap
execute if score #k switch.data matches 1.. run function switch:player/layout/flag

scoreboard players operation #t switch.data = #m3 switch.data
execute store result score #k switch.data run function switch:modes/rush_the_point/classes/builder/layout/find_3
execute if score #k switch.data matches 1.. unless score #k switch.data = #t switch.data run function switch:player/layout/swap
execute if score #k switch.data matches 1.. run function switch:player/layout/flag

scoreboard players operation #t switch.data = #m4 switch.data
execute store result score #k switch.data run function switch:modes/rush_the_point/classes/builder/layout/find_4
execute if score #k switch.data matches 1.. unless score #k switch.data = #t switch.data run function switch:player/layout/swap
execute if score #k switch.data matches 1.. run function switch:player/layout/flag

scoreboard players operation #t switch.data = #m5 switch.data
execute store result score #k switch.data run function switch:modes/rush_the_point/classes/builder/layout/find_5
execute if score #k switch.data matches 1.. unless score #k switch.data = #t switch.data run function switch:player/layout/swap
execute if score #k switch.data matches 1.. run function switch:player/layout/flag

scoreboard players operation #t switch.data = #m6 switch.data
execute store result score #k switch.data run function switch:modes/rush_the_point/classes/builder/layout/find_6
execute if score #k switch.data matches 1.. unless score #k switch.data = #t switch.data run function switch:player/layout/swap
execute if score #k switch.data matches 1.. run function switch:player/layout/flag

scoreboard players operation #t switch.data = #m7 switch.data
execute store result score #k switch.data run function switch:modes/rush_the_point/classes/builder/layout/find_7
execute if score #k switch.data matches 1.. unless score #k switch.data = #t switch.data run function switch:player/layout/swap
execute if score #k switch.data matches 1.. run function switch:player/layout/flag

scoreboard players operation #t switch.data = #m8 switch.data
execute store result score #k switch.data run function switch:modes/rush_the_point/classes/builder/layout/find_8
execute if score #k switch.data matches 1.. unless score #k switch.data = #t switch.data run function switch:player/layout/swap
execute if score #k switch.data matches 1.. run function switch:player/layout/flag

