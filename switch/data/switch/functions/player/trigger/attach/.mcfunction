
scoreboard players set @s switch.trigger.attach 0
execute if score #can_attach switch.data matches 1 run function switch:player/trigger/attach/real_attach
execute unless score #can_attach switch.data matches 1 unless entity @s[team=switch.tutorial] run tellraw @s [{"text":"Cette commande est désactivée pour le moment.","color":"red"}]

