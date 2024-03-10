
scoreboard players set @s switch.trigger.attach 0
execute if score @s switch.tutorial matches 6 run function switch:player/tutorial/finish
execute if score #can_attach switch.data matches 1 unless score @s switch.lang matches 0.. run function switch:player/trigger/attach/real_attach
execute unless score @s switch.lang matches 0.. run function switch:translations/player_trigger_attach_

