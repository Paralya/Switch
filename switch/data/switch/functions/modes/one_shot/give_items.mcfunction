
# replace tropical fish knockback 1 rename "Fishy Fish" 
give @s bow{display:{Name:'[{"text":"Boowie","italic":true,"color":"light_purple"}]'},Enchantments:[{id:"infinity",lvl:1},{id:"power",lvl:15}],HideFlags:1} 1
give @s iron_sword{display:{Name:'[{"text":"Swordy Sword","italic":true,"color":"lime"}]'}} 1
execute if score #TEAM_FISH switch.data matches 1 run give @s[team=switch.temp.blue] blue_wool 3
execute if score #TEAM_FISH switch.data matches 1 run give @s[team=switch.temp.red] red_wool 3
item replace entity @s hotbar.8 with ender_pearl 2
give @s arrow 1
give @s shears 1

effect give @s instant_health 4 5 true 
attribute @s generic.attack_speed base set 1024

