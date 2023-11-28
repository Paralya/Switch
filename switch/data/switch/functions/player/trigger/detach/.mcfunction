
scoreboard players set @s switch.trigger.detach 0
execute unless entity @s[team=switch.tutoriel] run tag @s add detached
execute unless entity @s[team=switch.tutoriel] run function switch:player/trigger/detach/basic_stuff

