
clear @s blue_ice{to_clear:1b}


function switch:modes/glassrunner/shop/reset_item


execute unless score @s switch.glassrunner.money matches 20.. run tellraw @s ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu n'as pas assez d'argent","color": "red"}]



execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-3 ~-1 ~-3 ~-3 ~3 ~3 red_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-3 ~-1 ~-3 ~3 ~3 ~-3 red_stained_glass replace #switch:glassrunner/tier_1

execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~3 ~-1 ~3 ~-3 ~3 ~3 red_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~3 ~-1 ~3 ~3 ~3 ~-3 red_stained_glass replace #switch:glassrunner/tier_1

execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 red_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-3 ~4 ~-3 ~3 ~4 ~3 red_stained_glass replace #switch:glassrunner/tier_1


execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-3 ~-1 ~-3 ~-3 ~3 ~3 pink_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-3 ~-1 ~-3 ~3 ~3 ~-3 pink_stained_glass replace #switch:glassrunner/tier_1_air

execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~3 ~-1 ~3 ~-3 ~3 ~3 pink_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~3 ~-1 ~3 ~3 ~3 ~-3 pink_stained_glass replace #switch:glassrunner/tier_1_air

execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 pink_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-3 ~4 ~-3 ~3 ~4 ~3 pink_stained_glass replace #switch:glassrunner/tier_1_air


execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-3 ~-1 ~-3 ~-3 ~3 ~3 blue_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-3 ~-1 ~-3 ~3 ~3 ~-3 blue_stained_glass replace #switch:glassrunner/tier_1

execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~3 ~-1 ~3 ~-3 ~3 ~3 blue_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~3 ~-1 ~3 ~3 ~3 ~-3 blue_stained_glass replace #switch:glassrunner/tier_1

execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 blue_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-3 ~4 ~-3 ~3 ~4 ~3 blue_stained_glass replace #switch:glassrunner/tier_1


execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-3 ~-1 ~-3 ~-3 ~3 ~3 light_blue_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-3 ~-1 ~-3 ~3 ~3 ~-3 light_blue_stained_glass replace #switch:glassrunner/tier_1_air

execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~3 ~-1 ~3 ~-3 ~3 ~3 light_blue_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~3 ~-1 ~3 ~3 ~3 ~-3 light_blue_stained_glass replace #switch:glassrunner/tier_1_air

execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 light_blue_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-3 ~4 ~-3 ~3 ~4 ~3 light_blue_stained_glass replace #switch:glassrunner/tier_1_air


execute if score @s switch.glassrunner.money matches 20.. run tellraw @s ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu viens de faire spawn un igloo","color": "green"}]

execute if score @s switch.glassrunner.money matches 20.. run xp add @s -20 levels
execute if score @s switch.glassrunner.money matches 20.. run scoreboard players remove @s switch.glassrunner.money 20



