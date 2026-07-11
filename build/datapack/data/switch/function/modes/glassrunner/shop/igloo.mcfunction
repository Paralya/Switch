
#> switch:modes/glassrunner/shop/igloo
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/glassrunner/tick_player
#

clear @s blue_ice[custom_data~{to_clear:true}]

function switch:modes/glassrunner/shop/reset_item

# Red (upgrade existing tier 1 glass to tier 2, then fill the air with tier 1)
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-4 ~-1 ~-4 ~-4 ~4 ~4 red_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-4 ~-1 ~-4 ~4 ~4 ~-4 red_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~4 ~-1 ~4 ~-4 ~4 ~4 red_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~4 ~-1 ~4 ~4 ~4 ~-4 red_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 red_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-4 ~5 ~-4 ~4 ~5 ~4 red_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-4 ~-1 ~-4 ~-4 ~4 ~4 pink_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-4 ~-1 ~-4 ~4 ~4 ~-4 pink_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~4 ~-1 ~4 ~-4 ~4 ~4 pink_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~4 ~-1 ~4 ~4 ~4 ~-4 pink_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 pink_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.red] run fill ~-4 ~5 ~-4 ~4 ~5 ~4 pink_stained_glass replace #switch:glassrunner/tier_1_air

# Blue (upgrade existing tier 1 glass to tier 2, then fill the air with tier 1)
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-4 ~-1 ~-4 ~-4 ~4 ~4 blue_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-4 ~-1 ~-4 ~4 ~4 ~-4 blue_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~4 ~-1 ~4 ~-4 ~4 ~4 blue_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~4 ~-1 ~4 ~4 ~4 ~-4 blue_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 blue_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-4 ~5 ~-4 ~4 ~5 ~4 blue_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-4 ~-1 ~-4 ~-4 ~4 ~4 light_blue_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-4 ~-1 ~-4 ~4 ~4 ~-4 light_blue_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~4 ~-1 ~4 ~-4 ~4 ~4 light_blue_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~4 ~-1 ~4 ~4 ~4 ~-4 light_blue_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 light_blue_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.money matches 20.. if entity @s[team=switch.glassrunner.blue] run fill ~-4 ~5 ~-4 ~4 ~5 ~4 light_blue_stained_glass replace #switch:glassrunner/tier_1_air

function switch:modes/glassrunner/translations/shop_igloo
execute if score @s switch.glassrunner.money matches 20.. run xp add @s -20 levels
execute if score @s switch.glassrunner.money matches 20.. run scoreboard players remove @s switch.glassrunner.money 20

