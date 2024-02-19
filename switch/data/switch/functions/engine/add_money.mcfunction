
# Money to add
scoreboard players set #add switch.money 10
execute if score #add_override switch.money matches 1.. run scoreboard players operation #add switch.money = #add_override switch.money
execute if score #add_override switch.money matches 1.. run scoreboard players reset #add_override switch.money

# Money bonus multiplier
scoreboard players operation #bonus switch.money = #add switch.money
scoreboard players operation #bonus switch.money *= @s switch.money_bonus
scoreboard players operation #bonus switch.money /= #100 switch.data
scoreboard players operation #add switch.money += #bonus switch.money

# Apply money
scoreboard players operation @s switch.money += #add switch.money

# Messages
execute store result score #random switch.data run random value 0..5
execute if score #random switch.data matches 0 run tellraw @s [{"nbt":"ParalyaSapphires","storage":"switch:main","interpret":true},{"text":" +"},{"score":{"name":"#add","objective":"switch.money"}},{"text":" Saphirs"},{"text":" vous apportant à un total de ","color":"dark_blue"},{"score":{"name":"@s","objective":"switch.money"}},{"text":" Saphirs"}]
execute if score #random switch.data matches 1 run tellraw @s [{"nbt":"ParalyaSapphires","storage":"switch:main","interpret":true},{"text":" +"},{"score":{"name":"#add","objective":"switch.money"}},{"text":" Saphirs"},{"text":" , vous avez donc maintenant un total de ","color":"dark_blue"},{"score":{"name":"@s","objective":"switch.money"}},{"text":" Saphirs"}]
execute if score #random switch.data matches 2 run tellraw @s [{"nbt":"ParalyaSapphires","storage":"switch:main","interpret":true},{"text":" +"},{"score":{"name":"#add","objective":"switch.money"}},{"text":" Saphirs"},{"text":" car vous êtes le meilleur, votre moula actuelle est donc de ","color":"dark_blue"},{"score":{"name":"@s","objective":"switch.money"}},{"text":" Saphirs"}]
execute if score #random switch.data matches 3 run tellraw @s [{"nbt":"ParalyaSapphires","storage":"switch:main","interpret":true},{"text":" Vous êtes apporté à un total de ","color":"dark_blue"},{"score":{"name":"@s","objective":"switch.money"}},{"text":" Saphirs"},{"text":" (","color":"dark_blue"},{"text":"+"},{"score":{"name":"#add","objective":"switch.money"}},{"text":" Saphirs"},{"text":")","color":"dark_blue"}]
execute if score #random switch.data matches 4 run tellraw @s [{"nbt":"ParalyaSapphires","storage":"switch:main","interpret":true},{"text":" Vous avez maintenant un total de ","color":"dark_blue"},{"score":{"name":"@s","objective":"switch.money"}},{"text":" Saphirs"},{"text":" (","color":"dark_blue"},{"text":"+"},{"score":{"name":"#add","objective":"switch.money"}},{"text":" Saphirs"},{"text":")","color":"dark_blue"}]
execute if score #random switch.data matches 5 run tellraw @s [{"nbt":"ParalyaSapphires","storage":"switch:main","interpret":true},{"text":" Car vous êtes le meilleur, votre moula actuelle est de ","color":"dark_blue"},{"score":{"name":"@s","objective":"switch.money"}},{"text":" Saphirs"},{"text":" (","color":"dark_blue"},{"text":"+"},{"score":{"name":"#add","objective":"switch.money"}},{"text":" Saphirs"},{"text":")","color":"dark_blue"}]

playsound entity.player.levelup ambient @s ^ ^ ^ .2

execute if score @s switch.money matches 400.. run advancement grant @s only switch:visible/3

