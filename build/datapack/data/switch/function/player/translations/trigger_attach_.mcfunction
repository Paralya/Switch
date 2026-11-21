
#> switch:player/translations/trigger_attach_
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/attach/main
#

# French
execute unless score #can_attach switch.data matches 1 unless entity @s[team=switch.tutorial] run tellraw @s[scores={switch.lang=0}] [{"text":"Cette commande est désactivée pour le moment. Raison :","color":"#FF3347"}]
execute unless score #can_attach switch.data matches 1 if score #test_mode switch.data matches 1 unless entity @s[team=switch.tutorial] run tellraw @s[scores={switch.lang=0}] [{"text":"- Un opérateur a activé le mode TEST.","color":"#FF3347"}]
execute unless score #can_attach switch.data matches 1 unless score #test_mode switch.data matches 1 unless entity @s[team=switch.tutorial] run tellraw @s[scores={switch.lang=0}] [{"text":"- Cette session est privatisée.","color":"#FF3347"}]

# English
execute unless score #can_attach switch.data matches 1 unless entity @s[team=switch.tutorial] run tellraw @s[scores={switch.lang=1}] [{"text":"This command is currently disabled. Reason:","color":"#FF3347"}]
execute unless score #can_attach switch.data matches 1 if score #test_mode switch.data matches 1 unless entity @s[team=switch.tutorial] run tellraw @s[scores={switch.lang=1}] [{"text":"- An operator has activated TEST mode.","color":"#FF3347"}]
execute unless score #can_attach switch.data matches 1 unless score #test_mode switch.data matches 1 unless entity @s[team=switch.tutorial] run tellraw @s[scores={switch.lang=1}] [{"text":"- This session is private.","color":"#FF3347"}]

