
#> switch:player/trigger/detach/
#
# @within	switch:player/joined
#			switch:player/trigger/
#			switch:player/trigger/lang/
#			switch:player/trigger/lang/tick_undefined
#

execute unless entity @s[team=switch.tutorial] run tag @s add detached
execute unless entity @s[team=switch.tutorial] run function switch:player/trigger/detach/basic_stuff
execute if score @s switch.trigger.detach matches 20231211 run tp @s 84069 100 84069
execute if score @s switch.trigger.detach matches 20231211 run gamemode creative @s
execute if score @s switch.trigger.detach matches 20240927 in switch:void run tp @s 152.08 79.16 -128.08 80.11 26.04
execute if score @s switch.trigger.detach matches 20240927 run gamemode creative @s
scoreboard players set @s switch.trigger.detach 0

