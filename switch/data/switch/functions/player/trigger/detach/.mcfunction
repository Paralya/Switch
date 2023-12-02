
scoreboard players set @s switch.trigger.detach 0
execute unless entity @s[team=switch.tutorial] run tag @s add detached
execute unless entity @s[team=switch.tutorial] run function switch:player/trigger/detach/basic_stuff

