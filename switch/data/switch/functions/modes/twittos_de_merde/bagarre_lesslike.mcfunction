scoreboard players set @a[tag=switch.looser] passage_vote -2
tp @a[tag=switch.looser] -25 101 1
effect clear @a[tag=switch.looser] 
effect give @a[tag=switch.looser] night_vision infinite 255 true
clear @a[tag=switch.looser]
item replace entity @a[tag=switch.looser] armor.head with leather_helmet
item replace entity @a[tag=switch.looser] armor.chest with leather_chestplate
item replace entity @a[tag=switch.looser] armor.legs with leather_leggings
item replace entity @a[tag=switch.looser] armor.feet with leather_boots
item replace entity @a[tag=switch.looser] hotbar.0 with stone_sword
item replace entity @a[tag=switch.looser] hotbar.1 with bow
item replace entity @a[tag=switch.looser] hotbar.7 with cooked_beef 5
item replace entity @a[tag=switch.looser] inventory.0 with arrow 3
attribute @s generic.attack_speed base set 1024
team leave @a[tag=switch.looser]