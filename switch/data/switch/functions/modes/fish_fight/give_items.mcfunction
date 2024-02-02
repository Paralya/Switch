# replace tropical fish knockback 1 rename "Fishy Fish" 
execute unless data entity @s Inventory[{id:"minecraft:tropical_fish"}] run give @s tropical_fish{Enchantments:[{id:"minecraft:knockback",lvl:2s},{id:"minecraft:sharpness",lvl:2s}],display:{Name:'{"text":"Fishy Fish","italic":false,"color":"aqua"}'}}
execute if score #TEAM_FISH switch.data matches 0 run give @s white_wool 6
execute if score #TEAM_FISH switch.data matches 1 run give @s[team=switch.temp.blue] blue_wool 6 
execute if score #TEAM_FISH switch.data matches 1 run give @s[team=switch.temp.red] red_wool 6 
give @s ender_pearl 6




