
scoreboard players set @a[tag=!detached,scores={switch.temp.rank=-1}] switch.temp.passage_vote -2
tp @a[tag=!detached,scores={switch.temp.rank=-1}] 25 101 1
effect clear @a[tag=!detached,scores={switch.temp.rank=-1}] 
effect give @a[tag=!detached,scores={switch.temp.rank=-1}] night_vision infinite 255 true
clear @a[tag=!detached,scores={switch.temp.rank=-1}]
item replace entity @a[tag=!detached,scores={switch.temp.rank=-1}] armor.head with iron_helmet
item replace entity @a[tag=!detached,scores={switch.temp.rank=-1}] armor.chest with iron_chestplate
item replace entity @a[tag=!detached,scores={switch.temp.rank=-1}] armor.legs with iron_leggings
item replace entity @a[tag=!detached,scores={switch.temp.rank=-1}] armor.feet with iron_boots
item replace entity @a[tag=!detached,scores={switch.temp.rank=-1}] hotbar.0 with iron_sword
item replace entity @a[tag=!detached,scores={switch.temp.rank=-1}] hotbar.1 with bow
item replace entity @a[tag=!detached,scores={switch.temp.rank=-1}] hotbar.5 with golden_apple 3
item replace entity @a[tag=!detached,scores={switch.temp.rank=-1}] hotbar.7 with cooked_beef 10
item replace entity @a[tag=!detached,scores={switch.temp.rank=-1}] inventory.0 with arrow 15
team leave @a[tag=!detached,scores={switch.temp.rank=-1}]

