
#> switch:modes/fish_fight/block_disappear/replace_blue
#
# @executed	at @a[tag=!detached,gamemode=!spectator]
#
# @within	switch:modes/fish_fight/block_disappear/global_tick replace blue_concrete [ at @a[tag=!detached,gamemode=!spectator] ]
#

setblock ~ ~ ~ minecraft:blue_wool
execute summon marker run function switch:modes/fish_fight/block_disappear/on_new_marker

