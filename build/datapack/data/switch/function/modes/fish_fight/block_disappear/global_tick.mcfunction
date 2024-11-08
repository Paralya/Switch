
#> switch:modes/fish_fight/block_disappear/global_tick
#
# @within	switch:modes/fish_fight/tick
#

# Replace every wool to concrete
execute as @e[type=item,nbt={Item:{id:"minecraft:white_wool"}}] run data modify entity @s Item.id set value "minecraft:white_concrete"
execute as @e[type=item,nbt={Item:{id:"minecraft:blue_wool"}}] run data modify entity @s Item.id set value "minecraft:blue_concrete"
execute as @e[type=item,nbt={Item:{id:"minecraft:red_wool"}}] run data modify entity @s Item.id set value "minecraft:red_concrete"

# Replace every concrete to a command block (to spawn a marker)
execute at @a[tag=!detached] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 command_block{Command:"function switch:modes/fish_fight/block_disappear/replace_white",auto:true} replace white_concrete
execute at @a[tag=!detached] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 command_block{Command:"function switch:modes/fish_fight/block_disappear/replace_blue",auto:true} replace blue_concrete
execute at @a[tag=!detached] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 command_block{Command:"function switch:modes/fish_fight/block_disappear/replace_red",auto:true} replace red_concrete

# Remove blocks
execute as @e[tag=switch.fish_fight_block] run function switch:modes/fish_fight/block_disappear/marker_tick

