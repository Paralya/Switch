
#> switch:modes/spleef/replace_shulker
#
# @executed	as @a[tag=!detached,gamemode=survival,scores={switch.temp.placed_shulker=1..}] & at @s
#
# @within	switch:modes/spleef/tick [ as @a[tag=!detached,gamemode=survival,scores={switch.temp.placed_shulker=1..}] & at @s ]
#

fill ~-8 ~-8 ~-8 ~8 ~8 ~8 powder_snow replace white_shulker_box
scoreboard players set @s switch.temp.placed_shulker 0

