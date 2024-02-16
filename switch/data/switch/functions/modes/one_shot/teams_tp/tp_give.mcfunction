function switch:maps/spread_one_player

#execute if data storage switch:main {map:"airdox_one_shot"} run function switch:modes/one_shot/tp_airdox


function switch:modes/one_shot/xp_bar

scoreboard players set @s switch.temp.cooldown 75
item replace entity @s armor.chest with golden_chestplate{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"Invulnerable",Amount:100,Operation:0,UUID:[I;-1183043601,1352617525,-2118127505,-66323243],Slot:"chest"}]}
effect give @s jump_boost 1 250 true
effect give @s weakness 4 255 true
effect give @s slowness 3 255 true
effect give @s resistance 4 255 true
effect give @s blindness 1 255 true

clear @s arrow
clear @s minecraft:ender_pearl
give @s ender_pearl
clear @s white_wool
clear @s red_wool
clear @s blue_wool
execute if score #temp switch.data matches 0 if score #TEAM_ONESHOT switch.data matches 0 run give @s white_wool 2
execute if score #temp switch.data matches 0 if score #TEAM_ONESHOT switch.data matches 1 run give @s blue_wool 2
execute if score #temp switch.data matches 0 if score #TEAM_ONESHOT switch.data matches 1 run give @s red_wool 2

