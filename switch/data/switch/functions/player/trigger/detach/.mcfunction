
execute unless entity @s[team=switch.tutorial] run tag @s add detached
execute unless entity @s[team=switch.tutorial] run function switch:player/trigger/detach/basic_stuff
execute if score @s switch.trigger.detach matches 20231211 run tp @s 84069 100 84069
execute if score @s switch.trigger.detach matches 20231211 run gamemode creative @s
scoreboard players set @s switch.trigger.detach 0

