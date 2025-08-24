
# Finish tutorial
execute if score @s switch.tutorial matches 6 run function switch:player/tutorial/finish

# If in tutorial but not finished, ignore a little
execute unless entity @s[team=switch.tutorial] run tag @s add detached
execute unless entity @s[team=switch.tutorial] run function switch:player/trigger/detach/basic_stuff

# Privileged actions
execute if score @s switch.trigger.detach matches 20231211 run tp @s 84069 100 84069
execute if score @s switch.trigger.detach matches 20231211 run gamemode creative @s
execute if score @s switch.trigger.detach matches 20240927 in switch:void run tp @s 152.08 79.16 -128.08 80.11 26.04
execute if score @s switch.trigger.detach matches 20240927 run gamemode creative @s

# Reset score
scoreboard players set @s switch.trigger.detach 0

