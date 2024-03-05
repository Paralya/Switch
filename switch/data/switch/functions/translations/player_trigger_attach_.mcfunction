
# French
execute unless score #can_attach switch.data matches 1 unless entity @s[team=switch.tutorial] run tellraw @s[scores={switch.lang=0}] [{"text":"Cette commande est désactivée pour le moment. Raison :","color":"red"}]
execute unless score #can_attach switch.data matches 1 if score #test_mode switch.data matches 1 unless entity @s[team=switch.tutorial] run tellraw @s[scores={switch.lang=0}] [{"text":"- Un opérateur a activé le mode TEST.","color":"red"}]
execute unless score #can_attach switch.data matches 1 unless score #test_mode switch.data matches 1 unless entity @s[team=switch.tutorial] run tellraw @s[scores={switch.lang=0}] [{"text":"- Cette session est privatisée.","color":"red"}]

