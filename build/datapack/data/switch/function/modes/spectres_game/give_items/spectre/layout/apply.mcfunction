
#> switch:modes/spectres_game/give_items/spectre/layout/apply
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/spectres_game/give_items/spectre
#

scoreboard players operation #p switch.data = @s switch.layout.e6323cc4
function switch:player/layout/unpack
function switch:player/layout/clear_flags

scoreboard players operation #t switch.data = #m0 switch.data
execute store result score #k switch.data run function switch:modes/spectres_game/give_items/spectre/layout/find_0
execute if score #k switch.data matches 1.. unless score #k switch.data = #t switch.data run function switch:player/layout/swap
execute if score #k switch.data matches 1.. run function switch:player/layout/flag

scoreboard players operation #t switch.data = #m1 switch.data
execute store result score #k switch.data run function switch:modes/spectres_game/give_items/spectre/layout/find_1
execute if score #k switch.data matches 1.. unless score #k switch.data = #t switch.data run function switch:player/layout/swap
execute if score #k switch.data matches 1.. run function switch:player/layout/flag

scoreboard players operation #t switch.data = #m2 switch.data
execute store result score #k switch.data run function switch:modes/spectres_game/give_items/spectre/layout/find_2
execute if score #k switch.data matches 1.. unless score #k switch.data = #t switch.data run function switch:player/layout/swap
execute if score #k switch.data matches 1.. run function switch:player/layout/flag

scoreboard players operation #t switch.data = #m3 switch.data
execute store result score #k switch.data run function switch:modes/spectres_game/give_items/spectre/layout/find_3
execute if score #k switch.data matches 1.. unless score #k switch.data = #t switch.data run function switch:player/layout/swap
execute if score #k switch.data matches 1.. run function switch:player/layout/flag

scoreboard players operation #t switch.data = #m4 switch.data
execute store result score #k switch.data run function switch:modes/spectres_game/give_items/spectre/layout/find_4
execute if score #k switch.data matches 1.. unless score #k switch.data = #t switch.data run function switch:player/layout/swap
execute if score #k switch.data matches 1.. run function switch:player/layout/flag

scoreboard players operation #t switch.data = #m5 switch.data
execute store result score #k switch.data run function switch:modes/spectres_game/give_items/spectre/layout/find_5
execute if score #k switch.data matches 1.. unless score #k switch.data = #t switch.data run function switch:player/layout/swap
execute if score #k switch.data matches 1.. run function switch:player/layout/flag

