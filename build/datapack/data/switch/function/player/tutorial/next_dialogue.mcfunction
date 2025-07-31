
#> switch:player/tutorial/next_dialogue
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/main
#

scoreboard players add @s[team=switch.tutorial] switch.tutorial 1
execute if score @s switch.tutorial matches ..6 run playsound ui.button.click ambient @s
execute if score @s switch.tutorial matches ..6 run function switch:player/tutorial/second
scoreboard players set @s switch.trigger.tutorial 0

