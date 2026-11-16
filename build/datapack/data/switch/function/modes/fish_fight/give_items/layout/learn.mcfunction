
#> switch:modes/fish_fight/give_items/layout/learn
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/layout/learn
#

execute unless items entity @s hotbar.* * unless items entity @s weapon.offhand * run return 0
scoreboard players set #p switch.data 8
execute if score @s switch.layout.46ad8ddf matches 0.. run scoreboard players operation #p switch.data = @s switch.layout.46ad8ddf
function switch:player/layout/unpack
function switch:player/layout/clear_flags

# Items still on their learned slot keep it, before a moved twin can take it
scoreboard players set #n0 switch.data 0
execute if function switch:modes/fish_fight/give_items/layout/stayed_0 run scoreboard players operation #n0 switch.data = #m0 switch.data
execute if score #n0 switch.data matches 1.. run return 0

# Moved items, wherever they are now
execute if score #n0 switch.data matches 0 store result score #n0 switch.data run function switch:modes/fish_fight/give_items/layout/find_0
scoreboard players operation #t switch.data = #n0 switch.data
function switch:player/layout/flag

# An emptied or replaced inventory teaches nothing
execute unless score #n0 switch.data matches 1.. run return 0

# Missing items keep their learned slot when it is free
execute if score #n0 switch.data matches 0 run scoreboard players operation #t switch.data = #m0 switch.data
execute if score #n0 switch.data matches 0 if function switch:player/layout/is_free run scoreboard players operation #n0 switch.data = #t switch.data
execute if score #n0 switch.data matches 0 store result score #n0 switch.data run function switch:player/layout/free/8
scoreboard players operation #t switch.data = #n0 switch.data
function switch:player/layout/flag

execute if score #n0 switch.data = #m0 switch.data run return 0
scoreboard players set @s switch.layout.46ad8ddf 0
scoreboard players operation @s switch.layout.46ad8ddf *= #10 switch.data
scoreboard players operation @s switch.layout.46ad8ddf += #n0 switch.data
scoreboard players remove @s switch.layout.46ad8ddf 1

