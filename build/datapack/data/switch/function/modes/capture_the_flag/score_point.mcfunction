
#> switch:modes/capture_the_flag/score_point
#
# @within	switch:modes/capture_the_flag/flag_tick
#

# Tellraw + sound + fireworks
function switch:translations/modes_capture_the_flag_score_point
execute unless score #test_mode switch.data matches 1 if entity @s[tag=switch.blue_flag] run advancement grant @p[tag=switch.has_blue_flag] only switch:visible/33
execute unless score #test_mode switch.data matches 1 if entity @s[tag=switch.red_flag] run advancement grant @p[tag=switch.has_red_flag] only switch:visible/33
execute as @a[tag=!detached] at @s run playsound entity.firework_rocket.blast ambient @s

execute if entity @s[tag=switch.blue_flag] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:firework_explosion":{"shape":"burst","has_trail":true,"has_flicker":true,"colors":[16711680],"fade_colors":[16711680]}}}}
execute if entity @s[tag=switch.red_flag] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:firework_explosion":{"shape":"burst","has_trail":true,"has_flicker":true,"colors":[255],"fade_colors":[255]}}}}

# Add point
execute if entity @s[tag=switch.blue_flag] run scoreboard players add #red_points switch.data 1
execute if entity @s[tag=switch.red_flag] run scoreboard players add #blue_points switch.data 1
execute if entity @s[tag=switch.blue_flag] as @p[tag=switch.has_blue_flag] run function switch:modes/capture_the_flag/teleport_to_spawn
execute if entity @s[tag=switch.red_flag] as @p[tag=switch.has_red_flag] run function switch:modes/capture_the_flag/teleport_to_spawn

# Reset the flag
function switch:modes/capture_the_flag/flag_reset

