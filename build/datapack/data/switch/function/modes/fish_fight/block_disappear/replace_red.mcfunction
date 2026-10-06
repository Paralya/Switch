
#> switch:modes/fish_fight/block_disappear/replace_red
#
# @within	(public)
#

setblock ~ ~ ~ minecraft:red_wool
execute summon marker run function switch:modes/fish_fight/block_disappear/on_new_marker

