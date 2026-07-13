
#> switch:player/layout/editor/read
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/layout/editor/save_and_close
#

scoreboard players set @s switch.layout.melee 0
execute if items entity @s hotbar.0 *[custom_data~{switch:{layout_role:"melee"}}] run scoreboard players set @s switch.layout.melee 1
execute if items entity @s hotbar.1 *[custom_data~{switch:{layout_role:"melee"}}] run scoreboard players set @s switch.layout.melee 2
execute if items entity @s hotbar.2 *[custom_data~{switch:{layout_role:"melee"}}] run scoreboard players set @s switch.layout.melee 3
execute if items entity @s hotbar.3 *[custom_data~{switch:{layout_role:"melee"}}] run scoreboard players set @s switch.layout.melee 4
execute if items entity @s hotbar.4 *[custom_data~{switch:{layout_role:"melee"}}] run scoreboard players set @s switch.layout.melee 5
execute if items entity @s hotbar.5 *[custom_data~{switch:{layout_role:"melee"}}] run scoreboard players set @s switch.layout.melee 6
execute if items entity @s hotbar.6 *[custom_data~{switch:{layout_role:"melee"}}] run scoreboard players set @s switch.layout.melee 7
execute if items entity @s hotbar.7 *[custom_data~{switch:{layout_role:"melee"}}] run scoreboard players set @s switch.layout.melee 8
execute if items entity @s hotbar.8 *[custom_data~{switch:{layout_role:"melee"}}] run scoreboard players set @s switch.layout.melee 9
execute if items entity @s weapon.offhand *[custom_data~{switch:{layout_role:"melee"}}] run scoreboard players set @s switch.layout.melee 10
scoreboard players set @s switch.layout.axe 0
execute if items entity @s hotbar.0 *[custom_data~{switch:{layout_role:"axe"}}] run scoreboard players set @s switch.layout.axe 1
execute if items entity @s hotbar.1 *[custom_data~{switch:{layout_role:"axe"}}] run scoreboard players set @s switch.layout.axe 2
execute if items entity @s hotbar.2 *[custom_data~{switch:{layout_role:"axe"}}] run scoreboard players set @s switch.layout.axe 3
execute if items entity @s hotbar.3 *[custom_data~{switch:{layout_role:"axe"}}] run scoreboard players set @s switch.layout.axe 4
execute if items entity @s hotbar.4 *[custom_data~{switch:{layout_role:"axe"}}] run scoreboard players set @s switch.layout.axe 5
execute if items entity @s hotbar.5 *[custom_data~{switch:{layout_role:"axe"}}] run scoreboard players set @s switch.layout.axe 6
execute if items entity @s hotbar.6 *[custom_data~{switch:{layout_role:"axe"}}] run scoreboard players set @s switch.layout.axe 7
execute if items entity @s hotbar.7 *[custom_data~{switch:{layout_role:"axe"}}] run scoreboard players set @s switch.layout.axe 8
execute if items entity @s hotbar.8 *[custom_data~{switch:{layout_role:"axe"}}] run scoreboard players set @s switch.layout.axe 9
execute if items entity @s weapon.offhand *[custom_data~{switch:{layout_role:"axe"}}] run scoreboard players set @s switch.layout.axe 10
scoreboard players set @s switch.layout.ranged 0
execute if items entity @s hotbar.0 *[custom_data~{switch:{layout_role:"ranged"}}] run scoreboard players set @s switch.layout.ranged 1
execute if items entity @s hotbar.1 *[custom_data~{switch:{layout_role:"ranged"}}] run scoreboard players set @s switch.layout.ranged 2
execute if items entity @s hotbar.2 *[custom_data~{switch:{layout_role:"ranged"}}] run scoreboard players set @s switch.layout.ranged 3
execute if items entity @s hotbar.3 *[custom_data~{switch:{layout_role:"ranged"}}] run scoreboard players set @s switch.layout.ranged 4
execute if items entity @s hotbar.4 *[custom_data~{switch:{layout_role:"ranged"}}] run scoreboard players set @s switch.layout.ranged 5
execute if items entity @s hotbar.5 *[custom_data~{switch:{layout_role:"ranged"}}] run scoreboard players set @s switch.layout.ranged 6
execute if items entity @s hotbar.6 *[custom_data~{switch:{layout_role:"ranged"}}] run scoreboard players set @s switch.layout.ranged 7
execute if items entity @s hotbar.7 *[custom_data~{switch:{layout_role:"ranged"}}] run scoreboard players set @s switch.layout.ranged 8
execute if items entity @s hotbar.8 *[custom_data~{switch:{layout_role:"ranged"}}] run scoreboard players set @s switch.layout.ranged 9
execute if items entity @s weapon.offhand *[custom_data~{switch:{layout_role:"ranged"}}] run scoreboard players set @s switch.layout.ranged 10
scoreboard players set @s switch.layout.ammo 0
execute if items entity @s hotbar.0 *[custom_data~{switch:{layout_role:"ammo"}}] run scoreboard players set @s switch.layout.ammo 1
execute if items entity @s hotbar.1 *[custom_data~{switch:{layout_role:"ammo"}}] run scoreboard players set @s switch.layout.ammo 2
execute if items entity @s hotbar.2 *[custom_data~{switch:{layout_role:"ammo"}}] run scoreboard players set @s switch.layout.ammo 3
execute if items entity @s hotbar.3 *[custom_data~{switch:{layout_role:"ammo"}}] run scoreboard players set @s switch.layout.ammo 4
execute if items entity @s hotbar.4 *[custom_data~{switch:{layout_role:"ammo"}}] run scoreboard players set @s switch.layout.ammo 5
execute if items entity @s hotbar.5 *[custom_data~{switch:{layout_role:"ammo"}}] run scoreboard players set @s switch.layout.ammo 6
execute if items entity @s hotbar.6 *[custom_data~{switch:{layout_role:"ammo"}}] run scoreboard players set @s switch.layout.ammo 7
execute if items entity @s hotbar.7 *[custom_data~{switch:{layout_role:"ammo"}}] run scoreboard players set @s switch.layout.ammo 8
execute if items entity @s hotbar.8 *[custom_data~{switch:{layout_role:"ammo"}}] run scoreboard players set @s switch.layout.ammo 9
execute if items entity @s weapon.offhand *[custom_data~{switch:{layout_role:"ammo"}}] run scoreboard players set @s switch.layout.ammo 10
scoreboard players set @s switch.layout.tool 0
execute if items entity @s hotbar.0 *[custom_data~{switch:{layout_role:"tool"}}] run scoreboard players set @s switch.layout.tool 1
execute if items entity @s hotbar.1 *[custom_data~{switch:{layout_role:"tool"}}] run scoreboard players set @s switch.layout.tool 2
execute if items entity @s hotbar.2 *[custom_data~{switch:{layout_role:"tool"}}] run scoreboard players set @s switch.layout.tool 3
execute if items entity @s hotbar.3 *[custom_data~{switch:{layout_role:"tool"}}] run scoreboard players set @s switch.layout.tool 4
execute if items entity @s hotbar.4 *[custom_data~{switch:{layout_role:"tool"}}] run scoreboard players set @s switch.layout.tool 5
execute if items entity @s hotbar.5 *[custom_data~{switch:{layout_role:"tool"}}] run scoreboard players set @s switch.layout.tool 6
execute if items entity @s hotbar.6 *[custom_data~{switch:{layout_role:"tool"}}] run scoreboard players set @s switch.layout.tool 7
execute if items entity @s hotbar.7 *[custom_data~{switch:{layout_role:"tool"}}] run scoreboard players set @s switch.layout.tool 8
execute if items entity @s hotbar.8 *[custom_data~{switch:{layout_role:"tool"}}] run scoreboard players set @s switch.layout.tool 9
execute if items entity @s weapon.offhand *[custom_data~{switch:{layout_role:"tool"}}] run scoreboard players set @s switch.layout.tool 10
scoreboard players set @s switch.layout.blocks 0
execute if items entity @s hotbar.0 *[custom_data~{switch:{layout_role:"blocks"}}] run scoreboard players set @s switch.layout.blocks 1
execute if items entity @s hotbar.1 *[custom_data~{switch:{layout_role:"blocks"}}] run scoreboard players set @s switch.layout.blocks 2
execute if items entity @s hotbar.2 *[custom_data~{switch:{layout_role:"blocks"}}] run scoreboard players set @s switch.layout.blocks 3
execute if items entity @s hotbar.3 *[custom_data~{switch:{layout_role:"blocks"}}] run scoreboard players set @s switch.layout.blocks 4
execute if items entity @s hotbar.4 *[custom_data~{switch:{layout_role:"blocks"}}] run scoreboard players set @s switch.layout.blocks 5
execute if items entity @s hotbar.5 *[custom_data~{switch:{layout_role:"blocks"}}] run scoreboard players set @s switch.layout.blocks 6
execute if items entity @s hotbar.6 *[custom_data~{switch:{layout_role:"blocks"}}] run scoreboard players set @s switch.layout.blocks 7
execute if items entity @s hotbar.7 *[custom_data~{switch:{layout_role:"blocks"}}] run scoreboard players set @s switch.layout.blocks 8
execute if items entity @s hotbar.8 *[custom_data~{switch:{layout_role:"blocks"}}] run scoreboard players set @s switch.layout.blocks 9
execute if items entity @s weapon.offhand *[custom_data~{switch:{layout_role:"blocks"}}] run scoreboard players set @s switch.layout.blocks 10
scoreboard players set @s switch.layout.mobility 0
execute if items entity @s hotbar.0 *[custom_data~{switch:{layout_role:"mobility"}}] run scoreboard players set @s switch.layout.mobility 1
execute if items entity @s hotbar.1 *[custom_data~{switch:{layout_role:"mobility"}}] run scoreboard players set @s switch.layout.mobility 2
execute if items entity @s hotbar.2 *[custom_data~{switch:{layout_role:"mobility"}}] run scoreboard players set @s switch.layout.mobility 3
execute if items entity @s hotbar.3 *[custom_data~{switch:{layout_role:"mobility"}}] run scoreboard players set @s switch.layout.mobility 4
execute if items entity @s hotbar.4 *[custom_data~{switch:{layout_role:"mobility"}}] run scoreboard players set @s switch.layout.mobility 5
execute if items entity @s hotbar.5 *[custom_data~{switch:{layout_role:"mobility"}}] run scoreboard players set @s switch.layout.mobility 6
execute if items entity @s hotbar.6 *[custom_data~{switch:{layout_role:"mobility"}}] run scoreboard players set @s switch.layout.mobility 7
execute if items entity @s hotbar.7 *[custom_data~{switch:{layout_role:"mobility"}}] run scoreboard players set @s switch.layout.mobility 8
execute if items entity @s hotbar.8 *[custom_data~{switch:{layout_role:"mobility"}}] run scoreboard players set @s switch.layout.mobility 9
execute if items entity @s weapon.offhand *[custom_data~{switch:{layout_role:"mobility"}}] run scoreboard players set @s switch.layout.mobility 10
scoreboard players set @s switch.layout.heal 0
execute if items entity @s hotbar.0 *[custom_data~{switch:{layout_role:"heal"}}] run scoreboard players set @s switch.layout.heal 1
execute if items entity @s hotbar.1 *[custom_data~{switch:{layout_role:"heal"}}] run scoreboard players set @s switch.layout.heal 2
execute if items entity @s hotbar.2 *[custom_data~{switch:{layout_role:"heal"}}] run scoreboard players set @s switch.layout.heal 3
execute if items entity @s hotbar.3 *[custom_data~{switch:{layout_role:"heal"}}] run scoreboard players set @s switch.layout.heal 4
execute if items entity @s hotbar.4 *[custom_data~{switch:{layout_role:"heal"}}] run scoreboard players set @s switch.layout.heal 5
execute if items entity @s hotbar.5 *[custom_data~{switch:{layout_role:"heal"}}] run scoreboard players set @s switch.layout.heal 6
execute if items entity @s hotbar.6 *[custom_data~{switch:{layout_role:"heal"}}] run scoreboard players set @s switch.layout.heal 7
execute if items entity @s hotbar.7 *[custom_data~{switch:{layout_role:"heal"}}] run scoreboard players set @s switch.layout.heal 8
execute if items entity @s hotbar.8 *[custom_data~{switch:{layout_role:"heal"}}] run scoreboard players set @s switch.layout.heal 9
execute if items entity @s weapon.offhand *[custom_data~{switch:{layout_role:"heal"}}] run scoreboard players set @s switch.layout.heal 10
scoreboard players set @s switch.layout.food 0
execute if items entity @s hotbar.0 *[custom_data~{switch:{layout_role:"food"}}] run scoreboard players set @s switch.layout.food 1
execute if items entity @s hotbar.1 *[custom_data~{switch:{layout_role:"food"}}] run scoreboard players set @s switch.layout.food 2
execute if items entity @s hotbar.2 *[custom_data~{switch:{layout_role:"food"}}] run scoreboard players set @s switch.layout.food 3
execute if items entity @s hotbar.3 *[custom_data~{switch:{layout_role:"food"}}] run scoreboard players set @s switch.layout.food 4
execute if items entity @s hotbar.4 *[custom_data~{switch:{layout_role:"food"}}] run scoreboard players set @s switch.layout.food 5
execute if items entity @s hotbar.5 *[custom_data~{switch:{layout_role:"food"}}] run scoreboard players set @s switch.layout.food 6
execute if items entity @s hotbar.6 *[custom_data~{switch:{layout_role:"food"}}] run scoreboard players set @s switch.layout.food 7
execute if items entity @s hotbar.7 *[custom_data~{switch:{layout_role:"food"}}] run scoreboard players set @s switch.layout.food 8
execute if items entity @s hotbar.8 *[custom_data~{switch:{layout_role:"food"}}] run scoreboard players set @s switch.layout.food 9
execute if items entity @s weapon.offhand *[custom_data~{switch:{layout_role:"food"}}] run scoreboard players set @s switch.layout.food 10
scoreboard players set @s switch.layout.explosive 0
execute if items entity @s hotbar.0 *[custom_data~{switch:{layout_role:"explosive"}}] run scoreboard players set @s switch.layout.explosive 1
execute if items entity @s hotbar.1 *[custom_data~{switch:{layout_role:"explosive"}}] run scoreboard players set @s switch.layout.explosive 2
execute if items entity @s hotbar.2 *[custom_data~{switch:{layout_role:"explosive"}}] run scoreboard players set @s switch.layout.explosive 3
execute if items entity @s hotbar.3 *[custom_data~{switch:{layout_role:"explosive"}}] run scoreboard players set @s switch.layout.explosive 4
execute if items entity @s hotbar.4 *[custom_data~{switch:{layout_role:"explosive"}}] run scoreboard players set @s switch.layout.explosive 5
execute if items entity @s hotbar.5 *[custom_data~{switch:{layout_role:"explosive"}}] run scoreboard players set @s switch.layout.explosive 6
execute if items entity @s hotbar.6 *[custom_data~{switch:{layout_role:"explosive"}}] run scoreboard players set @s switch.layout.explosive 7
execute if items entity @s hotbar.7 *[custom_data~{switch:{layout_role:"explosive"}}] run scoreboard players set @s switch.layout.explosive 8
execute if items entity @s hotbar.8 *[custom_data~{switch:{layout_role:"explosive"}}] run scoreboard players set @s switch.layout.explosive 9
execute if items entity @s weapon.offhand *[custom_data~{switch:{layout_role:"explosive"}}] run scoreboard players set @s switch.layout.explosive 10
scoreboard players set @s switch.layout.throwable 0
execute if items entity @s hotbar.0 *[custom_data~{switch:{layout_role:"throwable"}}] run scoreboard players set @s switch.layout.throwable 1
execute if items entity @s hotbar.1 *[custom_data~{switch:{layout_role:"throwable"}}] run scoreboard players set @s switch.layout.throwable 2
execute if items entity @s hotbar.2 *[custom_data~{switch:{layout_role:"throwable"}}] run scoreboard players set @s switch.layout.throwable 3
execute if items entity @s hotbar.3 *[custom_data~{switch:{layout_role:"throwable"}}] run scoreboard players set @s switch.layout.throwable 4
execute if items entity @s hotbar.4 *[custom_data~{switch:{layout_role:"throwable"}}] run scoreboard players set @s switch.layout.throwable 5
execute if items entity @s hotbar.5 *[custom_data~{switch:{layout_role:"throwable"}}] run scoreboard players set @s switch.layout.throwable 6
execute if items entity @s hotbar.6 *[custom_data~{switch:{layout_role:"throwable"}}] run scoreboard players set @s switch.layout.throwable 7
execute if items entity @s hotbar.7 *[custom_data~{switch:{layout_role:"throwable"}}] run scoreboard players set @s switch.layout.throwable 8
execute if items entity @s hotbar.8 *[custom_data~{switch:{layout_role:"throwable"}}] run scoreboard players set @s switch.layout.throwable 9
execute if items entity @s weapon.offhand *[custom_data~{switch:{layout_role:"throwable"}}] run scoreboard players set @s switch.layout.throwable 10
scoreboard players set @s switch.layout.special 0
execute if items entity @s hotbar.0 *[custom_data~{switch:{layout_role:"special"}}] run scoreboard players set @s switch.layout.special 1
execute if items entity @s hotbar.1 *[custom_data~{switch:{layout_role:"special"}}] run scoreboard players set @s switch.layout.special 2
execute if items entity @s hotbar.2 *[custom_data~{switch:{layout_role:"special"}}] run scoreboard players set @s switch.layout.special 3
execute if items entity @s hotbar.3 *[custom_data~{switch:{layout_role:"special"}}] run scoreboard players set @s switch.layout.special 4
execute if items entity @s hotbar.4 *[custom_data~{switch:{layout_role:"special"}}] run scoreboard players set @s switch.layout.special 5
execute if items entity @s hotbar.5 *[custom_data~{switch:{layout_role:"special"}}] run scoreboard players set @s switch.layout.special 6
execute if items entity @s hotbar.6 *[custom_data~{switch:{layout_role:"special"}}] run scoreboard players set @s switch.layout.special 7
execute if items entity @s hotbar.7 *[custom_data~{switch:{layout_role:"special"}}] run scoreboard players set @s switch.layout.special 8
execute if items entity @s hotbar.8 *[custom_data~{switch:{layout_role:"special"}}] run scoreboard players set @s switch.layout.special 9
execute if items entity @s weapon.offhand *[custom_data~{switch:{layout_role:"special"}}] run scoreboard players set @s switch.layout.special 10

