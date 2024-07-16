
function switch:modes/pitchout/map_1/teleport_players
function switch:modes/pitchout/xp_bar

scoreboard players set @s switch.temp.cooldown 100
item replace entity @s armor.chest with diamond_chestplate[enchantments={binding_curse:1},attribute_modifiers=[{type:"generic.knockback_resistance",slot:"chest",id:"switch.invulnerable",amount:100,operation:"add_value"}]]
effect give @s jump_boost 1 250 true

execute store result score @s switch.temp.old_x run data get entity @s Pos[0]
execute store result score @s switch.temp.old_z run data get entity @s Pos[2]

