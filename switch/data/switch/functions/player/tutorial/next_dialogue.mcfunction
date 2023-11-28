
scoreboard players add @s[team=switch.tutorial] switch.tutorial 1
execute if score @s switch.tutorial matches ..6 run playsound ui.button.click ambient @s
execute if score @s switch.tutorial matches 7.. run function switch:player/tutorial/finish
scoreboard players set @s switch.trigger.tutorial 0

