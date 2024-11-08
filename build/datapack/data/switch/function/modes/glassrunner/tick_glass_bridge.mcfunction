
#> switch:modes/glassrunner/tick_glass_bridge
#
# @within	switch:modes/glassrunner/tick
#

scoreboard players add @s switch.glassrunner.use_snowball 1


execute if entity @s[y=0,dy=70] run return 0


# Normal snowball


execute if score @s switch.glassrunner.use_snowball matches 5.. if entity @s[tag=switch.glassrunner.glass_bridge.red] facing entity @p[team=switch.glassrunner.red] eyes positioned ^ ^ ^2 run fill ~-0.3 ~-2.1 ~-0.3 ~0.3 ~-2.5 ~0.3 red_stained_glass replace #switch:glassrunner/tier_1
execute if score @s switch.glassrunner.use_snowball matches 5.. if entity @s[tag=switch.glassrunner.glass_bridge.blue] facing entity @p[team=switch.glassrunner.blue] eyes positioned ^ ^ ^2 run fill ~-0.3 ~-2.1 ~-0.3 ~0.3 ~-2.5 ~0.3 blue_stained_glass replace #switch:glassrunner/tier_1


execute if score @s switch.glassrunner.use_snowball matches 5.. if entity @s[tag=switch.glassrunner.glass_bridge.red] facing entity @p[team=switch.glassrunner.red] eyes positioned ^ ^ ^2 run fill ~-0.3 ~-2.1 ~-0.3 ~0.3 ~-2.5 ~0.3 pink_stained_glass replace air
execute if score @s switch.glassrunner.use_snowball matches 5.. if entity @s[tag=switch.glassrunner.glass_bridge.blue] facing entity @p[team=switch.glassrunner.blue] eyes positioned ^ ^ ^2 run fill ~-0.3 ~-2.1 ~-0.3 ~0.3 ~-2.5 ~0.3 light_blue_stained_glass replace air


# Renforced snowball

execute if score @s switch.glassrunner.use_snowball matches 5.. if entity @s[tag=switch.glassrunner.renforced_glass_bridge.red] facing entity @p[team=switch.glassrunner.red] eyes positioned ^ ^ ^2 run fill ~-0.8 ~-2.3 ~-0.8 ~0.8 ~-2.8 ~0.8 red_stained_glass replace #switch:glassrunner/tier_1_air
execute if score @s switch.glassrunner.use_snowball matches 5.. if entity @s[tag=switch.glassrunner.renforced_glass_bridge.blue] facing entity @p[team=switch.glassrunner.blue] eyes positioned ^ ^ ^2 run fill ~-0.8 ~-2.3 ~-0.8 ~0.8 ~-2.8 ~0.8 blue_stained_glass replace #switch:glassrunner/tier_1_air



execute if score @s switch.glassrunner.use_snowball matches 200.. run kill @s

