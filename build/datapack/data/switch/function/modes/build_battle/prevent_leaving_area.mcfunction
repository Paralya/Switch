
#> switch:modes/build_battle/prevent_leaving_area
#
# @executed	as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.id=0..}]
#
# @within	switch:modes/build_battle/second [ as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.id=0..}] ]
#

# Execute at the linked marker,
scoreboard players operation #player_id switch.temp.id = @s switch.temp.id
execute at @e[tag=switch.build_battle_marker,predicate=switch:has_same_temp_id] positioned ~1 ~ ~1 unless entity @s[dx=45,dy=36,dz=45] run function switch:modes/build_battle/teleport_back

