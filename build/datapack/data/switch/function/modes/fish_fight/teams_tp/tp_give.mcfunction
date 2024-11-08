
#> switch:modes/fish_fight/teams_tp/tp_give
#
# @within	switch:modes/fish_fight/death
#

execute if data storage switch:main {map:"luxio_fish_fight"} run function switch:maps/spread_one_player
execute if data storage switch:main {map:"airdox_fish_fight"} run function switch:modes/fish_fight/tp_airdox


function switch:modes/fish_fight/xp_bar

clear @s white_concrete
clear @s red_concrete
clear @s blue_concrete
clear @s ender_pearl
clear @s shears 1
scoreboard players set @s switch.temp.cooldown 100
item replace entity @s armor.chest with golden_chestplate[enchantments={binding_curse:1},attribute_modifiers=[{type:"knockback_resistance",slot:"chest",id:"switch.invulnerable",amount:100,operation:"add_value"}]]
attribute @s jump_strength base set 0
effect give @s weakness 4 255 true
effect give @s slowness 3 255 true
effect give @s resistance infinite 0 true

function switch:modes/fish_fight/give_items

