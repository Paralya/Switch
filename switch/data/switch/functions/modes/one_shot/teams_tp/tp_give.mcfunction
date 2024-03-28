
function switch:modes/one_shot/respawn/main
function switch:modes/one_shot/xp_bar

scoreboard players set @s switch.temp.cooldown 60
item replace entity @s armor.chest with golden_chestplate{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"Invulnerable",Amount:100,Operation:0,UUID:[I;-1183043601,1352617525,-2118127505,-66323243],Slot:"chest"}]}
effect give @s jump_boost 1 250 true
effect give @s resistance 3 255 true
effect give @s blindness 1 255 true
effect give @s night_vision infinite 0 true 

attribute @s generic.attack_speed base set 1024
execute if score @s switch.alive matches 6 run attribute @s generic.max_health base set 6
execute if score @s switch.alive matches 5 run attribute @s generic.max_health base set 5
execute if score @s switch.alive matches 4 run attribute @s generic.max_health base set 4
execute if score @s switch.alive matches 3 run attribute @s generic.max_health base set 3
execute if score @s switch.alive matches 2 run attribute @s generic.max_health base set 2
execute unless score @s switch.alive matches 2..6 run attribute @s generic.max_health base set 1

