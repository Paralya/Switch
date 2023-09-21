
# Starter kit
clear @s
effect give @s[team=switch.temp.gays] saturation infinite 255 true
effect give @s[team=switch.temp.gays] regeneration infinite 255 true
give @s[team=switch.temp.gays] splash_potion{Potion:"minecraft:slow_falling"}
item replace entity @s[team=switch.temp.gays] armor.feet with leather_boots{Enchantments:[{id:"minecraft:feather_falling",lvl:10s}],Unbreakable:1b}
item replace entity @s[team=switch.temp.shooters] hotbar.0 with bow{Enchantments:[{id:"minecraft:infinity",lvl:1s},{id:"minecraft:punch",lvl:1s}],Unbreakable:1b}
item replace entity @s[team=switch.temp.shooters] hotbar.1 with arrow 42

xp set @s 0 levels
xp set @s 0 points

