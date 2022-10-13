scoreboard players add @s switch.glassrunner.use_snowball 1
execute if score @s switch.glassrunner.use_snowball matches 3.. if entity @s[tag=switch.glassrunner.glass_bridge.red] run fill ~-0.5 ~-2.5 ~-0.5 ~0.5 ~-2.5 ~0.5 red_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.use_snowball matches 3.. if entity @s[tag=switch.glassrunner.glass_bridge.blue] run fill ~-0.5 ~-2.5 ~-0.5 ~0.5 ~-2.5 ~0.5 blue_stained_glass replace #switch:glassrunner/tier_1


execute if score @s switch.glassrunner.use_snowball matches 3.. if entity @s[tag=switch.glassrunner.glass_bridge.red] run fill ~-0.5 ~-2.5 ~-0.5 ~0.5 ~-2.5 ~0.5 pink_stained_glass replace air
execute if score @s switch.glassrunner.use_snowball matches 3.. if entity @s[tag=switch.glassrunner.glass_bridge.blue] run fill ~-0.5 ~-2.5 ~-0.5 ~0.5 ~-2.5 ~0.5 light_blue_stained_glass replace air
