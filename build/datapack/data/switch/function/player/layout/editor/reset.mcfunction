
#> switch:player/layout/editor/reset
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/layout/editor/tick
#

scoreboard players set @s switch.layout.melee 0
scoreboard players set @s switch.layout.axe 0
scoreboard players set @s switch.layout.ranged 0
scoreboard players set @s switch.layout.ammo 0
scoreboard players set @s switch.layout.tool 0
scoreboard players set @s switch.layout.blocks 0
scoreboard players set @s switch.layout.mobility 0
scoreboard players set @s switch.layout.heal 0
scoreboard players set @s switch.layout.food 0
scoreboard players set @s switch.layout.explosive 0
scoreboard players set @s switch.layout.throwable 0
scoreboard players set @s switch.layout.special 0
function switch:player/layout/editor/give_markers
function switch:player/translations/layout_editor_reset
playsound block.note_block.hat ambient @s

