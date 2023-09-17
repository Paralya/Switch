
# Starter kit
clear @s
effect give @s[tag=switch.gay_shooter.gay] saturation infinite 255 true
effect give @s[tag=switch.gay_shooter.gay] regeneration infinite 255 true
give @s[tag=switch.gay_shooter.gay] splash_potion{Potion:"minecraft:slow_falling"}
item replace entity @s[tag=switch.gay_shooter.gay] armor.feet with leather_boots{Enchantments:[{id:"minecraft:feather_falling",lvl:10s}],Unbreakable:1b}
item replace entity @s[tag=switch.gay_shooter.shooter] hotbar.0 with bow{Enchantments:[{id:"minecraft:infinity",lvl:1s},{id:"minecraft:punch",lvl:1s}],Unbreakable:1b}
item replace entity @s[tag=switch.gay_shooter.shooter] hotbar.1 with arrow 42

xp set @s 0 levels
xp set @s 0 points

