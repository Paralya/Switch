
scoreboard players set @s switch.trigger.attach 0
execute if score @s switch.tutorial matches 6 run function switch:player/tutorial/finish
execute if score #can_attach switch.data matches 1 run function switch:player/trigger/attach/real_attach
execute unless score #can_attach switch.data matches 1 unless entity @s[team=switch.tutorial] run tellraw @s [{"text":"Cette commande est désactivée pour le moment. Raison :","color":"red"}]
execute unless score #can_attach switch.data matches 1 if score #test_mode switch.data matches 1 unless entity @s[team=switch.tutorial] run tellraw @s [{"text":"- Un opérateur a activé le mode TEST.","color":"red"}]
execute unless score #can_attach switch.data matches 1 unless score #test_mode switch.data matches 1 unless entity @s[team=switch.tutorial] run tellraw @s [{"text":"- Cette session est privatisée.","color":"red"}]

