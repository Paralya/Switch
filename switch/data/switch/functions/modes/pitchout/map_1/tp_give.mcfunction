
function switch:modes/pitchout/map_1/teleport_players
function switch:modes/pitchout/xp_bar

scoreboard players set @s switch.temp.cooldown 50
item replace entity @s armor.chest with diamond_chestplate{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"Invulnerable",Amount:100,Operation:0,UUID:[I;-1183043601,1352617525,-2118127505,-66323243],Slot:"chest"}]}
effect give @s jump_boost 1 250 true
effect give @s slowness 1 255 true

