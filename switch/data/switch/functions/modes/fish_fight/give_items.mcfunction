# replace tropical fish knockback 1 rename "Fishy Fish" 
item replace entity @s hotbar.0 with tropical_fish{Enchantments:[{id:"minecraft:knockback",lvl:2s},{id:"minecraft:sharpness",lvl:2s}],display:{Name:'{"text":"Fishy Fish","italic":false,"color":"aqua"}'}}
execute if score #TEAM_FISH switch.data matches 0 run item replace entity @s hotbar.1 with white_wool 6
execute if score #TEAM_FISH switch.data matches 1 run item replace entity @s[team=switch.temp.blue] hotbar.1 with blue_wool 6 
execute if score #TEAM_FISH switch.data matches 1 run item replace entity @s[team=switch.temp.red] hotbar.1 with red_wool 6 
item replace entity @s hotbar.2 with ender_pearl 6




