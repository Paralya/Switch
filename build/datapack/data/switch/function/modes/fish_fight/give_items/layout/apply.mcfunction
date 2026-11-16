
#> switch:modes/fish_fight/give_items/layout/apply
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/fish_fight/give_items
#

scoreboard players operation #p switch.data = @s switch.layout.46ad8ddf
function switch:player/layout/unpack
function switch:player/layout/clear_flags

scoreboard players operation #t switch.data = #m0 switch.data
execute store result score #k switch.data run function switch:modes/fish_fight/give_items/layout/find_0
execute if score #k switch.data matches 1.. unless score #k switch.data = #t switch.data run function switch:player/layout/swap
execute if score #k switch.data matches 1.. run function switch:player/layout/flag

