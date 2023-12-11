
execute if score #test_mode switch.data matches 1.. run return 1

scoreboard players add @s switch.stats.wins 1
function switch:engine/add_money_macro with storage switch:main

scoreboard players set #add switch.money 10
execute if score #add_override switch.money matches 1.. run scoreboard players operation #add switch.money = #add_override switch.money
execute if score #add_override switch.money matches 1.. run scoreboard players reset #add_override switch.money
scoreboard players operation #add switch.money += @s switch.money_bonus
scoreboard players operation @s switch.money += #add switch.money

execute store result score #random switch.data run random value 0..7
execute if score #random switch.data matches 0 run tellraw @s [{"nbt":"ParalyaMoney","storage":"switch:main","interpret":true},{"text":" +","color":"light_purple"},{"score":{"name":"#add","objective":"switch.money"},"color":"light_purple"},{"text":"$","color":"light_purple"},{"text":" pour avoir gagné le mini-jeu vous apportant à un total de "},{"score":{"name":"@s","objective":"switch.money"},"color":"light_purple"},{"text":"$","color":"light_purple"}]
execute if score #random switch.data matches 1 run tellraw @s [{"nbt":"ParalyaMoney","storage":"switch:main","interpret":true},{"text":" +","color":"light_purple"},{"score":{"name":"#add","objective":"switch.money"},"color":"light_purple"},{"text":"$","color":"light_purple"},{"text":" de par votre victoire vous apportant à un total de "},{"score":{"name":"@s","objective":"switch.money"},"color":"light_purple"},{"text":"$","color":"light_purple"}]
execute if score #random switch.data matches 2 run tellraw @s [{"nbt":"ParalyaMoney","storage":"switch:main","interpret":true},{"text":" +","color":"light_purple"},{"score":{"name":"#add","objective":"switch.money"},"color":"light_purple"},{"text":"$","color":"light_purple"},{"text":" grâce à votre victoire, vous avez donc maintenant un total de "},{"score":{"name":"@s","objective":"switch.money"},"color":"light_purple"},{"text":"$","color":"light_purple"}]
execute if score #random switch.data matches 3 run tellraw @s [{"nbt":"ParalyaMoney","storage":"switch:main","interpret":true},{"text":" +","color":"light_purple"},{"score":{"name":"#add","objective":"switch.money"},"color":"light_purple"},{"text":"$","color":"light_purple"},{"text":" car vous êtes le meilleur, votre moula actuelle est donc de "},{"score":{"name":"@s","objective":"switch.money"},"color":"light_purple"},{"text":"$","color":"light_purple"}]
execute if score #random switch.data matches 4 run tellraw @s [{"nbt":"ParalyaMoney","storage":"switch:main","interpret":true},{"text":" Pour avoir gagné le mini-jeu, vous êtes apporté à un total de "},{"score":{"name":"@s","objective":"switch.money"},"color":"light_purple"},{"text":"$","color":"light_purple"},{"text":" ("},{"text":"+","color":"light_purple"},{"score":{"name":"#add","objective":"switch.money"},"color":"light_purple"},{"text":"$","color":"light_purple"},{"text":")"}]
execute if score #random switch.data matches 5 run tellraw @s [{"nbt":"ParalyaMoney","storage":"switch:main","interpret":true},{"text":" De par votre victoire, vous êtes apporté à un total de "},{"score":{"name":"@s","objective":"switch.money"},"color":"light_purple"},{"text":"$","color":"light_purple"},{"text":" ("},{"text":"+","color":"light_purple"},{"score":{"name":"#add","objective":"switch.money"},"color":"light_purple"},{"text":"$","color":"light_purple"},{"text":")"}]
execute if score #random switch.data matches 6 run tellraw @s [{"nbt":"ParalyaMoney","storage":"switch:main","interpret":true},{"text":" Grâce à votre victoire, vous avez maintenant un total de "},{"score":{"name":"@s","objective":"switch.money"},"color":"light_purple"},{"text":"$","color":"light_purple"},{"text":" ("},{"text":"+","color":"light_purple"},{"score":{"name":"#add","objective":"switch.money"},"color":"light_purple"},{"text":"$","color":"light_purple"},{"text":")"}]
execute if score #random switch.data matches 7 run tellraw @s [{"nbt":"ParalyaMoney","storage":"switch:main","interpret":true},{"text":" Car vous êtes le meilleur, votre moula actuelle est de "},{"score":{"name":"@s","objective":"switch.money"},"color":"light_purple"},{"text":"$","color":"light_purple"},{"text":" ("},{"text":"+","color":"light_purple"},{"score":{"name":"#add","objective":"switch.money"},"color":"light_purple"},{"text":"$","color":"light_purple"},{"text":")"}]

playsound entity.player.levelup ambient @s ^ ^ ^ .2

