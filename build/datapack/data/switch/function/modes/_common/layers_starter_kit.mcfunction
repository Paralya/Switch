
#> switch:modes/_common/layers_starter_kit
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/layers_2_teams/team_and_give
#			switch:modes/layers_4_teams/team_and_give
#

function switch:player/layout/deactivate
attribute @s attack_speed base set 2048
item replace entity @s hotbar.0 with stone_pickaxe
item replace entity @s hotbar.1 with stone_axe
item replace entity @s hotbar.2 with netherite_upgrade_smithing_template 5
item replace entity @s hotbar.3 with apple 12
item replace entity @s hotbar.4 with tnt 4
item replace entity @s hotbar.5 with flint_and_steel

# Layout learned for this kit
scoreboard players set @s switch.layout.kit 1
execute if score @s switch.layout.0569732a matches 0.. run function switch:modes/_common/layers_starter_kit/layout/apply
tag @s add switch.layout.active

