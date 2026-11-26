
#> switch:player/tutorial/grant_root
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/joined
#

execute store result score #show_advancement_messages switch.data run gamerule minecraft:show_advancement_messages
gamerule minecraft:show_advancement_messages false
advancement grant @s only switch:a_switch
execute if score #show_advancement_messages switch.data matches 1 run gamerule minecraft:show_advancement_messages true

