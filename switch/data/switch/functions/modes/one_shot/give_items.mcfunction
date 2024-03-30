
# replace tropical fish knockback 1 rename "Fishy Fish" 
give @s bow{display:{Name:'[{"text":"Boowie","italic":true,"color":"light_purple"}]'},Enchantments:[{id:"infinity",lvl:1},{id:"power",lvl:123}],HideFlags:1}
give @s netherite_sword{display:{Name:'[{"text":"Swordy Sword","italic":true,"color":"green"}]'},Enchantments:[{id:"sharpness",lvl:123}]}
attribute @s generic.attack_speed base set 1024
execute if score @s switch.alive matches 6 run attribute @s generic.max_health base set 6
execute if score @s switch.alive matches 5 run attribute @s generic.max_health base set 5
execute if score @s switch.alive matches 4 run attribute @s generic.max_health base set 4
execute if score @s switch.alive matches 3 run attribute @s generic.max_health base set 3
execute if score @s switch.alive matches 2 run attribute @s generic.max_health base set 2
execute unless score @s switch.alive matches 2..6 run attribute @s generic.max_health base set 1

